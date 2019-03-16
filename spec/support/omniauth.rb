# frozen_string_literal: true

OmniAuth.configure do |config|
  config.test_mode = true
  config.mock_auth[:default] = OmniAuth::AuthHash.new(
    info: {
      email: 'john.doe@example.com',
      first_name: 'John',
      last_name: 'Doe'
    }
  )
end
