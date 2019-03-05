# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Frontend test', type: :system do
  it 'ensures stimulus is loaded', js: true do
    visit frontend_test_path
    expect(page).to have_text 'Stimulus loaded'
  end

  it 'ensures css are loaded', js: true do
    visit frontend_test_path
    expect(page).to have_css 'p.css-test', visible: :hidden
  end
end