#!/bin/bash

# Cleanup.
rm -fr my-project

# Install composer as per https://getcomposer.org/download/
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php composer-setup.php

# Move to system-wide location.
sudo mv composer.phar /usr/local/bin/composer

# Create empty directory.
mkdir my-project
cd my-project

# Create new project by requiring a package.
composer require twig/twig
