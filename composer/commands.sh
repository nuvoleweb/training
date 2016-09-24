#!/bin/bash

# Install composer as per https://getcomposer.org/download/
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php composer-setup.php

# Move to system-wide location.
sudo mv composer.phar /usr/local/bin/composer
