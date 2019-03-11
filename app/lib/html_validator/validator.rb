# frozen_string_literal: true

module HtmlValidator
  class Validator
    include W3CValidators

    attr_reader :page, :results

    def validate(page)
      @page = page
      @results = nu_validator_results

      ResultsParser.list_warnings(results)
      return true if results.errors.blank?

      false
    end

    def errors
      ResultsParser.list_errors(results)
    end

    private

    def nu_validator_results
      validator = NuValidator.new
      parsed_html = HtmlParser.parse(page)

      validator.validate_text(parsed_html)
    end
  end
end
