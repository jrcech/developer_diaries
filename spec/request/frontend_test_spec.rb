# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'FrontendTest', type: :request do
  describe 'GET /frontend_test' do
    context 'with an authenticated user' do
      before do
        sign_in_user
        get '/frontend_test'
      end

      it 'responds successfully' do
        expect(response).to be_successful
      end

      it 'returns a 200 response' do
        expect(response).to have_http_status 200
      end
    end

    context 'with a guest' do
      before do
        get '/frontend_test'
      end

      it 'responds successfuly' do
        expect(response).to redirect_to '/users/sign_in'
      end

      it 'returns a 302 response' do
        expect(response).to have_http_status 302
      end
    end
  end
end
