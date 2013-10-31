require 'rvm/capistrano'
set :rvm_type, :system
set :rvm_ruby_string, '1.8.7'
set :rvm_bin_path, "/usr/local/rvm/bin"

set :application, "openwolf"
set :user, "transparencia"
 
set :scm, "git"
set :repository, "git://gitorious.org/openwolf/openwolf_v3.git"
set :deploy_via, :remote_cache
set :use_sudo, false

set :applicationdir, "/home/transparencia/public_html/#{application}"
set :deploy_to, "/home/transparencia/public_html/#{application}"

role :web, "openwolf.transparencia.gob.gt"                          # Your HTTP server, Apache/etc
role :app, "openwolf.transparencia.gob.gt"                          # This may be the same as your `Web` server
role :db,  "openwolf.transparencia.gob.gt", :primary => true # This is where
# Rails
role :solr, "openwolf.transparencia.gob.gt"

# migrations will run
set :backup_dir, "#{deploy_to}/backups"

set :branch, "master"

set :deploy_env, 'production'
set :rails_env, "production"

set :bundle_exec, "bundle exec"
