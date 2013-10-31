require 'rvm/capistrano'
set :rvm_type, :system
set :rvm_ruby_string, '2.0.0-p247'
set :rvm_bin_path, "/usr/local/rvm/bin"

set :application, "openwolf.transparencia.gob.gt"
set :user, "openwolf"
set :password, "openwolf"

set :scm, "git"
set :repository, "https://github.com/opengobgt/openwolf.git"
set :deploy_via, :remote_cache
set :use_sudo, false

set :applicationdir, "/var/www/#{application}"
set :deploy_to, "/var/www/#{application}"

role :web, "192.168.1.245"                          # Your HTTP server, Apache/etc
role :app, "192.168.1.245"                          # This may be the same as your `Web` server
role :db,  "192.168.1.245", :primary => true # This is where
# Rails
role :solr, "192.168.1.245"

# migrations will run
set :backup_dir, "#{deploy_to}/backups"

set :branch, "master"

set :deploy_env, 'production'
set :rails_env, "production"

set :bundle_exec, "bundle exec"
