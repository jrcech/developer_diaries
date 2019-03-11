# frozen_string_literal: true

module HtmlValidator
  class ResultsParser
    attr_reader :warnings, :errors

    def self.list_warnings(results)
      new(results).list_warnings
    end

    def self.list_errors(results)
      new(results).list_errors
    end

    def initialize(results)
      @warnings = results.warnings
      @errors = results.errors
    end

    def list_warnings
      puts MessageFormatter.format(warnings) if warnings.present?
    end

    def list_errors
      MessageFormatter.format(errors)
    end
  end
end
