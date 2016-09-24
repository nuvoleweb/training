## Configuration Management
Behat hands-on session branch. Practical assignments are organized in the following sub-branches:

1. Setup: `git checkout config-management-1` or [view on GitHub](https://github.com/nuvoleweb/training/tree/config-management-1)
2. Deploy config changes: `git checkout config-management-2` or [view on GitHub](https://github.com/nuvoleweb/training/tree/config-management-2)
3. Override configuration: `git checkout config-management-3` or [view on GitHub](https://github.com/nuvoleweb/training/tree/config-management-3)

### Exercise 1: Setup


In `cm-dev` run: `composer install` and install Drupal by performing the following steps:

```bash
# Install dependencies
composer install
# Change to Drupal root
cd web
# Set the config directory
echo "\$config_directories['sync'] = '../config/sync';" >> sites/default/settings.php
# Install site using SQLite, alternatively install from the UI.
../vendor/bin/drush site-install config_installer -y --db-url=sqlite:.sqlite --account-name=admin --account-pass=admin
# Run Drush server
../vendor/bin/drush --debug runserver :8888
```

Do the same in `cm-live` and set the config_directory to the one used in the previous step:
```bash
echo "\$config_directories['sync'] = '../../cm-dev/config/sync';" >> sites/default/settings.php
```
Note: We set the live config directory to be the same as the development directory.
Of course in a real scenario you use the same path but a separate clone of the environment.
