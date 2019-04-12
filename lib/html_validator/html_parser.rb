# frozen_string_literal: true

module HtmlValidator
  class HtmlParser
    attr_reader :page

    def self.parse(page)
      new(page).parse
    end

    def initialize(page)
      @page = page

      parse
    end

    def parse
      return page unless page.is_a?(Capybara::Session)

      html = page.html
      return html if Capybara.mode == :rack_test

      "<!DOCTYPE html>#{html}"
    end
  end
end
