# frozen_string_literal: true

class EnumInput < ApplicationInput
  def custom_text_field
    @builder.select(custom_attribute_name,
                    select_choices,
                    select_options,
                    new_html_options)
  end

  def select_choices
    input_options[:enum].to_a
  end

  def select_options
    return {} if include_blank == false

    { include_blank: blank_label }
  end

  def include_blank
    input_options[:include_blank]
  end

  def blank_label
    I18n.t("form_ease.enum.select", thing: include_blank_text)
  end

  def include_blank_text
    return include_blank if include_blank.is_a?(String)

    object.class.human_attribute_name(custom_attribute_name).downcase
  end
end
