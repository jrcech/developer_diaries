# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.1'
gem 'rails', '~> 5.2', '>= 5.2.2'

# region Default
gem 'bootsnap', '>= 1.1.0', require: false
gem 'jbuilder', '~> 2.8'
gem 'mini_magick', '~> 4.9', '>= 4.9.3'
gem 'pg', '~> 1.1', '>= 1.1.4'
gem 'puma', '~> 3.12'
gem 'redis', '~> 4.1'
gem 'webpacker', '~> 4.0', '>= 4.0.2'
# endregion

gem 'devise', '~> 4.6', '>= 4.6.1'
gem 'mailgun-ruby', '~> 1.1', '>= 1.1.11'
gem 'rolify', '~> 5.2'
gem 'slim-rails', '~> 3.2'

group :development, :test do
  gem 'awesome_print', '~> 1.8'
  gem 'bullet', '~> 5.9'
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'dotenv-rails', '~> 2.7', '>= 2.7.1'
  gem 'factory_bot_rails', '~> 5.0', '>= 5.0.1'
  gem 'rspec-rails', '~> 3.8', '>= 3.8.2'
end

group :development do
  gem 'annotate', '~> 2.7', '>= 2.7.4'
  gem 'better_errors', '~> 2.5', '>= 2.5.1'
  gem 'binding_of_caller', '~> 0.8.0'
  gem 'brakeman', '~> 4.4'
  gem 'bundler-audit', '~> 0.6.1'
  gem 'fasterer', '~> 0.4.2'
  gem 'flay', '~> 2.12'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'magic_frozen_string_literal', '~> 1.0', '>= 1.0.3'
  gem 'overcommit', '~> 0.46.0'
  gem 'pry-awesome_print', '~> 9.6', '>= 9.6.11'
  gem 'pry-rails', '~> 0.3.9'
  gem 'rails_best_practices', '~> 1.19', '>= 1.19.4'
  gem 'reek', '~> 5.3', '>= 5.3.1'
  gem 'rubocop', '~> 0.65.0', require: false
  gem 'rubocop-rspec', '~> 1.32', require: false
  gem 'rubycritic', '~> 4.0', require: false
  gem 'seedbank', '~> 0.5.0'
  gem 'slim_lint', '~> 0.16.1'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'capybara', '~> 3.14'
  gem 'geckodriver-helper', '~> 0.23.0'
  gem 'selenium-webdriver', '~> 3.141'
  gem 'shoulda-matchers', '~> 4.0', '>= 4.0.1'
  gem 'simplecov', '~> 0.16.1', require: false
  gem 'vcr', '~> 4.0'
  gem 'w3c_validators', '~> 1.3', '>= 1.3.4'
end
