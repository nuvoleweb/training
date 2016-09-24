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



### Exercise 2: Deploy configuration from dev to live

Change configuration on dev.

```bash
# Make sure we are on the development site
cd cm-dev/web
# Export configuration
../vendor/bin/drush config-export
# Commit and push it.
git add ../config && git commit -m "Update configruation"
# Switch to live site
cd ../../cm-live/web
# preview configuration import (skipping the git pull since it is the same repo here)
../vendor/bin/drush config-import --preview=diff -n
# do the import
../vendor/bin/drush config-import
```

Verify that the configuration changed on the live site.



### Exercise 3: Overriding configuration with settings.php

Override the configuration on the development site by including the example.settings.local.php

```php
$config['system.site']['name'] = "Development site";
```

Note: Not all configuration can be overridden like this, notable examples are enabled modules and color of bartik.
