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


