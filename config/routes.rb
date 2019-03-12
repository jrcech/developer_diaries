# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  namespace :admin do
    get :frontend_test, to: 'frontend_test#index'
    root to: 'dashboard#index'
  end

  root to: 'frontend_test#index'
end
