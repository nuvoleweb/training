#!/bin/bash
# Install Drupal Console. https://drupalconsole.com/articles/how-to-install-drupal-console
php -r "readfile('https://drupalconsole.com/installer');" > drupal.phar
sudo mv drupal.phar /usr/local/bin/drupal
chmod +x /usr/local/bin/drupal
drupal init --override
