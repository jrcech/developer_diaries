# frozen_string_literal: true

require "#{Rails.root}/lib/html_validator"

RSpec::Matchers.define :have_valid_html do
  validator = HtmlValidator::Validator.new

  match do |actual|
    validator.validate(actual)
  end

  failure_message do
    "Expected to be valid html but it was not#{validator.errors}"
  end

  failure_message_when_negated do
    'Expected not to be valid html but it was'
  end
end
