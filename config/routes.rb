Rails.application.routes.draw do
  scope :frontend_test do
    root to: 'frontend_test#index', as: :frontend_test
  end
end
