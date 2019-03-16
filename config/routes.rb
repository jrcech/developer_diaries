# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks'
  }

  namespace :admin do
    get :frontend_test, to: 'frontend_test#index'
    root to: 'dashboard#index'
  end

  root to: 'admin/frontend_test#index'
end
