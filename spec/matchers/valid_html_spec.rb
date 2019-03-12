# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'spec/support/matchers/valid_html', vcr: true do
  it 'can evaluate valid html' do
    page = '<!DOCTYPE html><html lang="en"><head><title>V</title></head></html>'
    expect do
      expect(page).not_to have_valid_html
    end.to fail_including('Expected not to be valid html but it was')
  end

  it 'can evaluate invalid html', vcr: true do
    page = '<!DOCTYPE html><html lang="en"><head></head></html>'
    expect do
      expect(page).to have_valid_html
    end.to fail_including('Expected to be valid html but it was not')
  end
end
