# frozen_string_literal: true

require 'capistrano/setup'
require 'capistrano/deploy'
require 'capistrano/bundler'
require 'capistrano/rails/migrations'
require 'capistrano/rbenv'
require 'capistrano/puma'
require 'capistrano/scm/git'
require 'capistrano/yarn'
require 'capistrano/dotenv/tasks'

install_plugin Capistrano::SCM::Git
install_plugin Capistrano::Puma

Dir.glob('lib/capistrano/tasks/*.rake').each { |r| import r }
