# frozen_string_literal: true

require_relative 'boot'

require 'rails'
require 'active_model/railtie'
require 'active_job/railtie'
require 'active_record/railtie'
require 'active_storage/engine'
require 'action_controller/railtie'
require 'action_mailer/railtie'
require 'action_view/railtie'
require 'action_cable/engine'

Bundler.require(*Rails.groups)

module DeveloperDiaries
  class Application < Rails::Application
    config.load_defaults 5.2

    config.generators do |generator|
      generator.test_framework :rspec
      generator.stylesheets false
      generator.javascripts false
      generator.view_specs false
      generator.controller_specs false
      generator.routing_specs false
      generator.helper false
      generator.channel assets: false
    end
  end
end
