# frozen_string_literal: true

set :stage, :staging
set :rails_env, :production
set :branch, 'develop'

server '46.101.110.210',
       port: '26398',
       user: 'jiricech',
       roles: %w[app db web]
