# frozen_string_literal: true

require 'rails_helper'

RSpec.describe FrontendTestController, type: :controller do
  describe '#index' do
    it 'responds successfully' do
      get :index
      expect(response).to be_successful
    end

    it 'returns a 200 response' do
      get :index
      expect(response).to have_http_status '200'
    end
  end
end
