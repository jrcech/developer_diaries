# frozen_string_literal: true

module HtmlValidator
  class MessageFormatter
    attr_reader :issues

    def self.format(issues)
      new(issues).format
    end

    def initialize(issues)
      @issues = issues
    end

    def format
      "\n#{issues_title}\n#{issues_list}"
    end

    private

    def issues_title
      issues_type = issues.first.type.to_s
      issues_size = issues.size

      "Found #{issues_size} #{issues_type.pluralize(issues_size)}:"
    end

    def issues_list
      list = ''
      issues.each do |issue|
        list += "#{issue}\n"
      end

      list
    end
  end
end
