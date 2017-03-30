# config valid only for Capistrano 3.1
lock '3.4.1'


set :application, 'webuagrm'
set :repo_url, 'git@bitbucket.org:tesisuagrm/webuagrm.git'

set :deploy_to, '/home/ubuntu/webuagrm'

# Default value for :linked_files is []
set :linked_files, %w{config/database.yml config/secrets.yml}


# Default value for linked_dirs is []
set :bundle_binstubs, nil
set :linked_dirs, %w{log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
# set :keep_releases, 5

namespace :deploy do

  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      # Your restart mechanism here, for example:
      execute :touch, release_path.join('tmp/restart.txt')
      # invoke 'delayed_job:restart'
    end
  end

  after :publishing, :restart

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end
end
#
# namespace :delayed_job do
#
#   def args
#     fetch(:delayed_job_args, '')
#   end
#
#   def delayed_job_roles
#     fetch(:delayed_job_server_role, :app)
#   end
#
#   desc 'Stop the delayed_job process'
#   task :stop do
#     on roles(delayed_job_roles) do
#       within release_path do
#         with rails_env: fetch(:rails_env) do
#           execute :bundle, :exec, :'bin/delayed_job', :stop
#         end
#       end
#     end
#   end
#
#   desc 'Start the delayed_job process'
#   task :start do
#     on roles(delayed_job_roles) do
#       within release_path do
#         with rails_env: fetch(:rails_env) do
#           execute :bundle, :exec, :'bin/delayed_job', args, :start
#         end
#       end
#     end
#   end
#
#   desc 'Restart the delayed_job process'
#   task :restart do
#     on roles(delayed_job_roles) do
#       within release_path do
#         with rails_env: fetch(:rails_env) do
#           execute :bundle, :exec, :'bin/delayed_job', args, :restart
#         end
#       end
#     end
#   end
#
#   desc 'Status the delayed_job process'
#   task :status do
#     on roles(delayed_job_roles) do
#       within release_path do
#         with rails_env: fetch(:rails_env) do
#           execute :bundle, :exec, :'bin/delayed_job', args, :status
#         end
#       end
#     end
#   end
# end
#


# config valid only for current version of Capistrano
# lock "3.7.2"

# set :application, "my_app_name"
# set :repo_url, "git@example.com:me/my_repo.git"

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, "/var/www/my_app_name"

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# append :linked_files, "config/database.yml", "config/secrets.yml"

# Default value for linked_dirs is []
# append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
# set :keep_releases, 5
