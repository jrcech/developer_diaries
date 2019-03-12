# frozen_string_literal: true

VCR.config do |config|
  config.cassette_library_dir = 'spec/cassettes'
  config.stub_with :fakeweb
  config.default_cassette_options = { record: :new_episodes }
end

RSpec.configure do |config|
  config.extend VCR::RSpec::Macros
end
