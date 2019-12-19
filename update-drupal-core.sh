#!/bin/bash
##first check if any new version of drupal core
#composer outdated "drupal/*"
#second get DATABASE BACKUP
#after update with this commands
composer update drupal/core --with-dependencies &&
#put site on mode maintenance
echo Put site on mode maintenance
vendor/bin/drush state:set system.maintenance_mode 1 --input-format=integer &&
vendor/bin/drush state:get system.maintenance_mode
vendor/bin/drush cache:rebuild &&
echo Now run updatedb
vendor/bin/drush updatedb &&
#remove maintenance mode
echo Remove maintenance mode
vendor/bin/drush state:set system.maintenance_mode 0 --input-format=integer &&
vendor/bin/drush state:get system.maintenance_mode
echo Clear cache
vendor/bin/drush cache:rebuild
echo Now durupal-core is updated