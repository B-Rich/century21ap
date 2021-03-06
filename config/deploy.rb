set :application, "century21ap"
set :repository,  "wim@wim.webfactional.com:repos/century21ap.git"
set :deploy_to, "/home/ubuntu/rails/century21ap"
set :scm, :git

set :location, "ec2-184-73-195-7.compute-1.amazonaws.com"
role :web, location                          # Your HTTP server, Apache/etc
role :app, location                          # This may be the same as your `Web` server
role :db,  location, :primary => true # This is where Rails migrations will run

set :scm_username, "wim"
set :use_sudo, false
default_run_options[:pty] = true

set :rvm_type, :user

# Note that you must push your public key (id_rsa.pub) to the server
# scp -i ~/.ssh/watsonkey.pem  ~/.ssh/id_rsa.pub ubuntu@ec2-184-73-195-7.compute-1.amazonaws.com:.ssh/authorized_keys2

$:.unshift(File.expand_path('./lib', ENV['rvm_path'])) # Add RVM's lib directory to the load path.

# require "bundler/capistrano"
# require "rvm/capistrano"

set :user, "ubuntu"

# Note that this will look in the file /Users/jdesert/.ssh/id_rsa for the key (multiple keys per file)
ssh_options[:keys] = [File.join(ENV["HOME"], ".ssh", "id_rsa")]

task :qa do
  set :branch, %x(git branch | grep '^*' | colrm 1 2).strip
  role :app, "web220.webfaction.com"
end

namespace :deploy do
  desc "Restart nginx"
  task :restart do
    run "ln -s #{deploy_to}/shared/config/database.yml #{deploy_to}/current/config/database.yml"
    run "ln -s #{deploy_to}/shared/config/century21ap.yml #{deploy_to}/current/config/century21ap.yml"
    run "cd #{deploy_to}/current"
    # run "sudo /etc/init.d/thin restart"
    run "sudo nginx -s reload"
  end
end
