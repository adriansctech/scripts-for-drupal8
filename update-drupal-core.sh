#!/bin/bash
##first check if any new version of drupal core
#composer outdated "drupal/*"
#second get DATABASE BACKUP
#after update with this commands
composer update drupal/core --with-dependencies &&
vendor/bin/drush updatedb &&
vendor/bin/drush cache:rebuild