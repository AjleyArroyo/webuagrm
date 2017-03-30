# Load DSL and Setup Up Stages}
require 'capistrano/setup'

# Includes default deployment tasks
require 'capistrano/deploy'
require 'capistrano/bundler'
require 'capistrano/rails'
require 'capistrano/rbenv'
# Load the SCM plugin appropriate to your project:
#
# require "capistrano/scm/hg"
# install_plugin Capistrano::SCM::Hg
# or
# require "capistrano/scm/svn"
# install_plugin Capistrano::SCM::Svn
# or
# require "capistrano/scm/git"
# install_plugin Capistrano::SCM::Git

set :rbenv_custom_path, '/home/ubuntu/.rbenv'
set :rbenv_type, :system # or :system, depends on your rbenv setup
set :rbenv_ruby, '2.3.1'

# Loads custom tasks from `lib/capistrano/tasks' if you have any defined.
Dir.glob('lib/capistrano/tasks/*.cap').each { |r| import r }
