# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  scope :frontend_test do
    root to: 'frontend_test#index', as: :frontend_test
  end

  root to: 'frontend_test#index'
end
