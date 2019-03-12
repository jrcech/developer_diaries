# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  namespace :admin do
    root to: 'dashboard#index'
  end

  scope :frontend_test do
    root to: 'frontend_test#index', as: :frontend_test
  end

  root to: 'frontend_test#index'
end
