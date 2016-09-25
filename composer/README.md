## Composer
Composer hands-on session branch. Practical assignments are organized in the following sub-branches:

1. Setup and basics: `git checkout composer-1` or [view on GitHub](https://github.com/nuvoleweb/training/tree/composer-1)
2. Drupal Composer workflow: `git checkout composer-2` or [view on GitHub](https://github.com/nuvoleweb/training/tree/composer-2)
3. Full Composer workflow: `git checkout composer-3` or [view on GitHub](https://github.com/nuvoleweb/training/tree/composer-3)

## Exercise 1: Create a new Composer project.

The final result is in the `my-composer-project-built` directory.

The `composer-1.sh` script will run all following commands and populate the `my-composer-project` directory.

```bash
# Install composer as per https://getcomposer.org/download/
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php composer-setup.php

# Move to system-wide location.
sudo mv composer.phar /usr/local/bin/composer

# Create empty directory.
mkdir my-composer-project
cd my-composer-project

# Create new project by requiring a package.
composer require twig/twig
```

## Exercise 2: Create a new Drupal project and add modules.

The final result is in the `my-project-built` directory.

The `composer-2.sh` script will run all following commands and populate the `my-project` directory.

```bash
# Create a new Drupal project.
composer create-project drupal-composer/drupal-project:8.x-dev my-project --stability dev --no-interaction
cd my-project

# Add the ds module, version 8.x-2.5.
composer require drupal/ds 8.2.5

# Add the admin_toolbar module as development dependency, version 8.x-1.10 to 8.x-2.0 not included.
composer require --dev drupal/admin_toolbar ~8.1.10
```
