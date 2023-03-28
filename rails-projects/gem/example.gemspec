# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "<PROJECT-VERSION>/version"

Gem::Specification.new do |spec|
  spec.name = "<PROJECT-VERSION>"
  spec.version = SimpleCov::Formatter::TailwindFormatter::VERSION
  spec.authors = ["Christopher Pezza"]
  spec.email = ["chiefpansancolt@gmail.com"]
  spec.summary = ""
  spec.description = ""
  spec.homepage = "https://chiefpansancolt.live/docs/simplecov_tailwind/"
  spec.license = "MIT"

  spec.required_ruby_version = ">= 2.5.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] =
    "https://github.com/chiefpansancolt/<PROJECT-VERSION>"
  spec.metadata["changelog_uri"] =
    "https://github.com/chiefpansancolt/<PROJECT-VERSION>/blob/master/CHANGELOG.md"
  spec.metadata["bug_tracker_uri"] =
    "https://github.com/chiefpansancolt/<PROJECT-VERSION>/issues"

  spec.files = `git ls-files`.split("\n")
  spec.bindir = "bin"
  spec.executables =
    `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "simplecov", "~> 0.16"
  spec.metadata["rubygems_mfa_required"] = "true"
end
