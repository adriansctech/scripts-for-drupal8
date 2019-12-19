#!/bin/bash

PS3='what do you want to do: '
options=("Generate controller" "Option 2" "Option 3" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Generate controller")        	
            vendor/bin/drupal generate:controller
            ;;
        "Option 2")
            echo "you chose choice 2"
            ;;
        "Option 3")
            echo "you chose choice $REPLY which is $opt"
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done