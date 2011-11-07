set :application, "miconecta"
set :repository,  "wim@wim.webfactional.com:repos/miconecta.git"
set :deploy_to, "/home/wim/webapps/miconnecta"
set :scm, :git

role :web, "web219.webfaction.com"                          # Your HTTP server, Apache/etc
role :app, "web219.webfaction.com"                          # This may be the same as your `Web` server
role :db,  "web219.webfaction.com", :primary => true # This is where Rails migrations will run

set :user, "wim"
set :scm_username, "wim"
set :use_sudo, false
default_run_options[:pty] = true

set :rvm_type, :user
$:.unshift(File.expand_path('./lib', ENV['rvm_path'])) # Add RVM's lib directory to the load path.

# require "bundler/capistrano"
# require "rvm/capistrano"

task :qa do
  set :branch, %x(git branch | grep '^*' | colrm 1 2).strip
  role :app, "web220.webfaction.com"
end

namespace :deploy do
  desc "Restart nginx"
  task :restart do
    run "#{deploy_to}/bin/restart"
  end
end

