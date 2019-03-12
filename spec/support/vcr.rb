# frozen_string_literal: true

VCR.configure do |config|
  config.cassette_library_dir = 'spec/cassettes'
  config.hook_into :webmock
  config.ignore_localhost = true
  config.configure_rspec_metadata!

  Dotenv.parse('.env', '.env.test').each do |k, v|
    config.filter_sensitive_data("ENV[#{k}]") { v }
  end
end
