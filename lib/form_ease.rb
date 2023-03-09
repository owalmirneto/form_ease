# frozen_string_literal: true

require "simple_form"

require "form_ease/engine"
require "form_ease/error"

files = Dir[File.join(File.dirname(__FILE__), "../config/locales/**/*.{rb,yml}")]
I18n.load_path.concat(files)
