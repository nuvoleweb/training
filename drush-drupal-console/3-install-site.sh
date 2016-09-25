#!/bin/bash
# Install Drupal Console. https://drupalconsole.com/articles/how-to-install-drupal-console
composer create-project drupal-composer/drupal-project:8.x-dev d8-project --stability dev --no-interaction
cd d8-project/web
# Prompts for MySQL admin password.
mysqladmin -u root -p create d8project
# Install site.
drupal site:install --langcode en --db-type mysql --db-host localhost --db-name d8project standard

