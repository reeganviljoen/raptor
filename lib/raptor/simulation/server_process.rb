# frozen_string_literal: true

require "fileutils"
require "net/http"
require "rbconfig"
require "socket"
require "timeout"

module Raptor
  module Simulation
    class ServerProcess
      attr_reader :profile, :rackup_path, :artifact_dir, :port, :pid, :stdout_path, :stderr_path

      def initialize(profile:, rackup_path:, artifact_dir:, host: "127.0.0.1")
        @profile = profile
        @rackup_path = rackup_path
        @artifact_dir = artifact_dir
        @host = host
        @port = free_port
        @pid = nil
        @stdout_path = File.join(artifact_dir, "server.stdout.log")
        @stderr_path = File.join(artifact_dir, "server.stderr.log")
      end

      def start
        FileUtils.mkdir_p(artifact_dir)
        command = build_command
        File.write(File.join(artifact_dir, "server-command.txt"), command.join(" "))

        @pid = Process.spawn(
          environment,
          *command,
          chdir: project_root,
          out: stdout_path,
          err: stderr_path,
          pgroup: true
        )

        wait_until_ready
        self
      end

      def stop
        return unless pid

        terminate("TERM")
        wait_for_exit(5) || terminate("KILL")
        wait_for_exit(2)
      end

      def url(path)
        "http://#{@host}:#{port}#{path}"
      end

      private

      def build_command
        bind = "tcp://#{@host}:#{port}"

        case profile.adapter.to_s
        when "raptor"
          [RbConfig.ruby, File.join(project_root, "bin", "raptor"), "-q", "-b", bind, "-w", profile.workers.to_s, rackup_path]
        when "puma"
          puma = Gem.bin_path("puma", "puma")
          command = [RbConfig.ruby, puma, "--no-config", "-q", "-b", bind]
          command.concat(["-t", "#{profile.threads}:#{profile.threads}"]) if profile.threads
          command.concat(["-w", profile.workers.to_s]) if profile.workers.to_i.positive?
          command << rackup_path
          command
        else
          raise ArgumentError, "unknown server adapter: #{profile.adapter.inspect}"
        end
      rescue Gem::Exception => error
        raise "Puma is required for simulation runs. Add it to the bundle and run bundle install. #{error.message}"
      end

      def environment
        {
          "RACK_ENV" => "production",
          "RAPTOR_SIMULATION" => "1"
        }
      end

      def wait_until_ready
        Timeout.timeout(15) do
          loop do
            raise "server exited before readiness: #{stderr_tail}" if exited?

            response = Net::HTTP.get_response(URI(url("/__health__")))
            return if response.code == "200"
          rescue Errno::ECONNREFUSED, Errno::ECONNRESET, EOFError, Net::OpenTimeout, Net::ReadTimeout
            sleep 0.05
          end
        end
      rescue Timeout::Error
        stop
        raise "server did not become ready on port #{port}: #{stderr_tail}"
      end

      def exited?
        !!Process.waitpid(pid, Process::WNOHANG)
      rescue Errno::ECHILD
        true
      end

      def terminate(signal)
        begin
          Process.kill(signal, -pid)
        rescue Errno::EPERM
          begin
            Process.kill(signal, pid)
          rescue Errno::ESRCH
            nil
          end
        rescue Errno::ESRCH
          nil
        end
      rescue Errno::ESRCH
        nil
      end

      def wait_for_exit(timeout)
        deadline = Process.clock_gettime(Process::CLOCK_MONOTONIC) + timeout
        loop do
          return true if Process.waitpid(pid, Process::WNOHANG)
          return false if Process.clock_gettime(Process::CLOCK_MONOTONIC) >= deadline

          sleep 0.05
        end
      rescue Errno::ECHILD
        true
      end

      def stderr_tail
        return "" unless File.file?(stderr_path)

        File.readlines(stderr_path).last(20).join
      rescue StandardError
        ""
      end

      def free_port
        server = TCPServer.new(@host, 0)
        server.addr[1]
      ensure
        server&.close
      end

      def project_root
        File.expand_path("../../..", __dir__)
      end
    end
  end
end
