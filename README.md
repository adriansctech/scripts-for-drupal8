# scripts-for-drupal8
These scripts are ready to run from the root of the project.

## codding-standards.sh
This script automatically corrects the files that are indicated by applying by default the [standard encoding of drupal 8](https://www.drupal.org/docs/develop/standards).

The files you will fix have the following extensions:
* php
* module
* inc
* install
* test
* profile
* theme
* css
* info
* txt
* md
* yml
* JS

This script uses [ESLINT (included in the drupal core)](https://www.drupal.org/docs/develop/standards/javascript/eslint-settings) to check the syntax of the JS files, it must be installed by executing 'yarn install' inside the core folder of our drupal project.

## install-module.sh
This script will uninstall, install the module that we indicate and clear the cache of the site to finalize

## update-drupal-core.sh
This script will update the drupal core, download the code via composer, put the site in maintenance mode, then updatedb and finally remove the maintenance mode and clear the system cache. Keep in mind to make a copy of the database and put the site in maintenance mode.

## drupal-console.sh
When this script is executed it will show a menu with different useful options for the system that will be executed through "drupal console".

The options are the following:
* Display site status
* Display sistem site info
* Check updates
* Generate module
* Generate controller
* Generate form
* Generate FORM_ALTER of form_ID_ALTER
* Generate service
* Generate theme