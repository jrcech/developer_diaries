# frozen_string_literal: true

require 'rails_helper'

RSpec.describe FrontendTestController, type: :controller do
  describe '#index' do
    context 'as an authenticated user' do
      before do
        @user = create(:user)
        @user.confirm
        sign_in @user
      end

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

  context 'as a guest' do

  end
end
