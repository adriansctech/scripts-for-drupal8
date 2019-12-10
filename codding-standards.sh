#!/bin/bash
#first install modules 
#composer require drupal/coder
#composer require dealerdirect/phpcodesniffer-composer-installer
#and check next 
#vendor/bin/phpcs -i
#The installed coding standards are PEAR, Zend, PSR12, Squiz, MySource, PSR2, PSR1, DrupalPractice and Drupal
vendor/bin/phpcbf --standard=Drupal --extensions=php,module,inc,install,test,profile,theme,css,info,txt,md,yml ./web/modules/custom/reset_roles
