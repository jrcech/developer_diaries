# frozen_string_literal: true

Devise.setup do |config|
  require 'devise/orm/active_record'

  config.mailer_sender = 'developerdiaries@example.com'
  config.case_insensitive_keys = [:email]
  config.strip_whitespace_keys = [:email]
  config.skip_session_storage = [:http_auth]
  config.stretches = Rails.env.test? ? 1 : 11
  config.reconfirmable = true
  config.expire_all_remember_me_on_sign_out = true
  config.password_length = 6..128
  config.email_regexp = /\A[^@\s]+@[^@\s]+\z/
  config.reset_password_within = 6.hours
  config.sign_out_via = :delete
  config.lock_strategy = :failed_attempts
  config.unlock_keys = [:email]
  config.unlock_strategy = :email
  config.maximum_attempts = 10
  config.last_attempt_warning = true
  config.omniauth :facebook,
                  ENV['FACEBOOK_APP_ID'],
                  ENV['FACEBOOK_APP_SECRET']
  config.omniauth :google_oauth2,
                  ENV['GOOGLE_CLIENT_ID'],
                  ENV['GOOGLE_CLIENT_SECRET'],
                  name: :google
end
