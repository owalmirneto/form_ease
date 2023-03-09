# frozen_string_literal: true

$LOAD_PATH.push File.expand_path("lib", __dir__)
require "form_ease/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "form_ease"
  spec.version     = FormEase::VERSION
  spec.authors     = ["Walmir Neto"]
  spec.email       = ["owalmirneto@gmail.com"]
  spec.homepage    = "http://github.com/owalmirneto/form_ease"
  spec.summary     = "FormEase is a extension for gem simple_form"

  spec.required_ruby_version = ">= 2.7"

  spec.files = Dir["{lib}/**/*"] + ["Rakefile", "README.md"]

  spec.add_dependency "rails", ">= 3.1"
  spec.add_dependency "simple_form", ">= 5.2"

  spec.metadata["rubygems_mfa_required"] = "true"
end
