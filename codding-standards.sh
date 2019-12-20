#!/bin/bash
#first install modules 
#composer require drupal/coder
#composer require dealerdirect/phpcodesniffer-composer-installer
#and check next 
#vendor/bin/phpcs -i
#The installed coding standards are PEAR, Zend, PSR12, Squiz, MySource, PSR2, PSR1, DrupalPractice and Drupal
#Now change '[custom-module-name]' to your custom module name
echo Go to check next extensions: php,module,inc,install,test,profile,theme,css,info,txt,md,yml
vendor/bin/phpcbf --standard=Drupal --extensions=php,module,inc,install,test,profile,theme,css,info,txt,md,yml ./web/modules/custom/'[custom-module-name]'
#to check JS files, first check if have yarn dependencies, go to core folder and run next command
#yarn install 
#Now change '[custom-module-name]' to your custom module name
echo Now check JS files
web/core/node_modules/.bin/eslint web/modules/custom/'[custom-module-name]'/js/*.js --fix;
