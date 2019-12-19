#!/bin/bash
##crud is a module name, change to the name of the module you want to reinstall
echo The actual state of this module 
vendor/bin/drush pm:list --type=module |grep crud &&
echo Now go to uninstall this module
vendor/bin/drush pm:uninstall crud &&
vendor/bin/drush pm:list --type=module |grep crud
echo Install module
vendor/bin/drush en crud &&
vendor/bin/drush pm:list --type=module |grep crud
echo And finally clear all caches
vendor/bin/drush cr 