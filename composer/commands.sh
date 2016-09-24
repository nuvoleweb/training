#!/bin/bash

# Create a new Drupal project.
composer create-project drupal-composer/drupal-project:8.x-dev my-project --stability dev --no-interaction

# Add the ds module, version 8.x-2.5.
composer require drupal/ds 8.2.5


