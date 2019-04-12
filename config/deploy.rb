# frozen_string_literal: true

server '46.101.110.210', port: '26398', roles: %i[web app db], primary: true

set :repo_url, 'git@github.com:CechTech/developer_diaries.git'
set :application, 'developer_diaries'
set :user, 'jiricech'
set :puma_threads, [4, 16]
set :puma_workers, 0

# Rbenv
rbenv_path = fetch(:rbenv_path)
set :rbenv_type, :user
set :rbenv_ruby, File.read('.ruby-version').strip
set :rbenv_prefix, "RBENV_ROOT=#{rbenv_path} " \
                   "RBENV_VERSION=#{fetch(:rbenv_ruby)} " \
                   "#{rbenv_path}/bin/rbenv exec"
set :rbenv_map_bins, %w[rake gem bundle ruby rails puma pumactl]
set :rbenv_roles, :all

# Nodenv
set :nodenv_type, :user
set :nodenv_node, '10.15.3'
set :nodenv_prefix, "NODENV_ROOT=#{fetch(:nodenv_path)} " \
                    "NODENV_VERSION=#{fetch(:nodenv_node)} " \
                    "#{fetch(:nodenv_path)}/bin/nodenv exec"
set :nodenv_map_bins, %w[node npm yarn]
set :nodenv_roles, :all

set :linked_files, %w[config/master.key]

# env
append :linked_files, '.env'

# Don't change these unless you know what you're doing
set :pty, true
set :use_sudo, false
set :stage, :production
set :deploy_via, :remote_cache
set :deploy_to, "/home/#{fetch(:user)}/apps/#{fetch(:application)}"
set :puma_bind,
    "unix://#{shared_path}/tmp/sockets/#{fetch(:application)}-puma.sock"
set :puma_state, "#{shared_path}/tmp/pids/puma.state"
set :puma_pid, "#{shared_path}/tmp/pids/puma.pid"
set :puma_access_log, "#{release_path}/log/puma.error.log"
set :puma_error_log, "#{release_path}/log/puma.access.log"
set :ssh_options,
    forward_agent: true,
    user: fetch(:user),
    keys: %w[~/.ssh/id_rsa.pub]
set :puma_preload_app, true
set :puma_worker_timeout, nil
set :puma_init_active_record, true

namespace :puma do
  desc 'Create Directories for Puma Pids and Socket'
  task :make_dirs do
    on roles(:app) do
      execute "mkdir #{shared_path}/tmp/sockets -p"
      execute "mkdir #{shared_path}/tmp/pids -p"
    end
  end

  before :start, :make_dirs
end

namespace :deploy do
  desc 'Make sure local git is in sync with remote.'
  task :check_revision do
    on roles(:app) do
      current_branch = fetch(:branch)

      unless `git rev-parse HEAD` == `git rev-parse origin/#{current_branch}`
        puts "WARNING: HEAD is not the same as origin/#{current_branch}"
        puts 'Run `git push` to sync changes.'
        exit
      end
    end
  end

  desc 'Initial Deploy'
  task :initial do
    on roles(:app) do
      before 'deploy:restart', 'puma:start'
      invoke 'deploy'
    end
  end

  before :starting, :check_revision
  after :finishing, :cleanup
end
