# scripts-for-drupal8
These scripts are ready to run from the root of the project.

## codding-standards.sh
This script automatically corrects the files that are indicated by applying by default the standard encoding of drupal 8

## install-module.sh
This script will uninstall, install the module that we indicate and clear the cache of the site to finalize

## update-drupal-core.sh
This script will update the drupal core, download the code via composer, put the site in maintenance mode, then updatedb and finally qitará the maintenance mode and clear the system cache. Keep in mind to make a copy of the database and put the site in maintenance mode.