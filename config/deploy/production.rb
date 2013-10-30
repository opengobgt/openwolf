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
