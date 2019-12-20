#!/bin/bash

PS3='what do you want to do: '
options=("Display site status"
        "Display sistem site info"
        "Check updates"
        "Generate module"
        "Generate controller" 
        "Generate form" 
        "Generate FORM_ALTER of form_ID_ALTER"
        "Generate service"
        "Generate theme"
        "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Display site status")
            vendor/bin/drupal site:status
            ;;
        "Display sistem site info")
            vendor/bin/drupal debug:config system.site
            ;;
        "Check updates")
            vendor/bin/drupal debug:update
            ;;
        "Generate module")
            vendor/bin/drupal generate:module
            ;;    
        "Generate controller")
            vendor/bin/drupal generate:controller
            ;;
        "Generate form")
            vendor/bin/drupal generate:form
            ;;
        "Generate FORM_ALTER of form_ID_ALTER")
            vendor/bin/drupal generate:form:alter
            ;;        
        "Generate service")
            vendor/bin/drupal generate:service
            ;;
        "Generate theme")
            vendor/bin/drupal generate:theme
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done