# config valid only for current version of Capistrano
lock "3.9.0"

# environnement symfony
set :symfony_env, "prod"

# nom de mon application
set :application, "industrialWeb"

# le repo distant
set :repo_url, "git@github.com:Y0D4RK/web_in_dus.git"

set :ssh_user, 'yodark'
server '92.222.89.100', user: fetch(:ssh_user), roles: %w{yodark}
# Default branch is :master
set :branch, "master"

# Default deploy_to directory is /var/www/my_app_name
set :deploy_to, "/home/yodark/dev/industrialWeb"

set :app_path, "app"
set :web_path, "web"
set :var_path, "var"
set :bin_path, "bin"
set :log_path, "var/logs"
set :cache_path, "var/cache"
set :symfony_console_path, "bin/console"

set :composer_install_flags, '--prod --prefer-dist --no-interaction --optimize-autoloader'

set :linked_files, %w{app/config/parameters.yml}
set :linked_dirs, %w{var/logs var/cache vendor}

set :use_sudo, false

set :file_permissions_users, ["yodark"]
set :file_permissions_groups, ["yodark"]
set :use_set_permissions, false
set :file_permissions_roles, :all
set :file_permissions_paths, ["var/logs", "var/cache", "var/vendor"]
set :file_permissions_chmod_mode, "0777"
set :permission_method, :acl

set :keep_releases, 3

after 'deploy:starting', 'composer:install_executable'
after 'deploy:updated', 'symfony:assets:install'

namespace :deploy do
    task :database do
        invoke 'symfony:console', 'doctrine:schema:update', '--force'
    end
    after 'deploy:updated', 'deploy:database'
end