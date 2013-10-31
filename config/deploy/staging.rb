set :application, "openwolf.transparencia.gob.gt"
set :user, "openwolf"
set :password, "openwolf"

set :scm, "git"
set :repository, "https://github.com/opengobgt/openwolf.git"
set :deploy_via, :remote_cache
set :use_sudo, false

set :applicationdir, "/home/transparencia/public_html/staging/#{application}"
set :deploy_to, "/home/transparencia/public_html/staging/#{application}"

role :web, "openwolf.transparencia.gob.gt"                          # Your HTTP server, Apache/etc
role :app, "openwolf.transparencia.gob.gt"                          # This may be the same as your `Web` server
role :db,  "openwolf.transparencia.gob.gt", :primary => true        # This is where Rails
role :solr, "openwolf.transparencia.gob.gt"

# migrations will run
set :backup_dir, "#{deploy_to}/backups"

set :branch, "master"

set :deploy_env, 'staging'
set :rails_env, "staging"

set :bundle_exec, ""
