set :stage, :production

set :controllers_to_clear, ["app_*.php"]
set :composer_install_flags, '--prefer-dist --no-interaction --optimize-autoloader'

SSHKit.config.command_map[:composer] = "php #{shared_path.join("composer.phar")}"