# frozen_string_literal: true

require 'capistrano/setup'
require 'capistrano/deploy'
require 'capistrano/rails'
require 'capistrano/rbenv'
require 'capistrano/puma'
require 'capistrano/scm/git'
require 'capistrano/yarn'
require 'capistrano/nvm'
require 'capistrano/dotenv/tasks'
require 'rollbar/capistrano3'

install_plugin Capistrano::SCM::Git
install_plugin Capistrano::Puma

Dir.glob('lib/capistrano/tasks/*.rake').each { |r| import r }
