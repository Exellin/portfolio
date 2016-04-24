set :application, 'portfolio'
set :repo_url, 'https://github.com/Exellin/portfolio.git'
set :deploy_to, "/var/www/shawnwcarnegie.com"
set :scm, :git
set :branch, "master"
set :group, "deployers"
set :use_sudo, false
set :rails_env, "production"
set :deploy_via, :copy
set :ssh_options, {user: 'estelix', :forward_agent => true, :port => 897 }
set :keep_releases, 5
# default_run_options[:pty] = true (right now comes up with error)
set :rvm_ruby_version, '2.3.0'
server "shawnwcarnegie.com", roles: [:app, :web, :db], :primary => true

# Default value for :format is :pretty
# set :format, :pretty

# Default value for :log_level is :debug
# set :log_level, :debug

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
set :linked_files, fetch(:linked_files, []).push('config/database.yml', 'config/secrets.yml')

# Default value for linked_dirs is []
# set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system')

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

namespace :deploy do

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end

end
