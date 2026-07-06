# frozen_string_literal: true

require_relative "lib/raptor/version"

Gem::Specification.new do |spec|
  spec.name = "raptor"
  spec.version = Raptor::VERSION
  spec.authors = ["Raptor contributors"]
  spec.email = ["dev@example.com"]

  spec.summary = "A Ruby 4 Ractor-backed Rack web server research project."
  spec.description = "Raptor is a Ruby 4/MRI-only Rack web server that explores a Puma-like API with Ractor workers instead of process workers or request threads."
  spec.homepage = "https://example.com/raptor"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 4.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["rubygems_mfa_required"] = "true"

  spec.files = Dir.chdir(__dir__) do
    Dir["lib/**/*.rb", "exe/*", "bin/*", "README.md", "docs/**/*.md", "examples/**/*", "LICENSE.txt"]
  end
  spec.bindir = "exe"
  spec.executables = ["raptor", "raptor-simulate"]
  spec.require_paths = ["lib"]

  spec.add_dependency "csv", ">= 3.3", "< 4"
  spec.add_dependency "rack", ">= 3.0", "< 4"
  spec.add_development_dependency "minitest", ">= 5.0"
  spec.add_development_dependency "puma", ">= 8.0", "< 9"
end
