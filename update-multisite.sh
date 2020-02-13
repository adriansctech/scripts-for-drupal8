#!/bin/bash
echo Multisite Maintenance script
PS3='what do you want to do: '
options=("Display site status"
        "Display sistem site info"
        "Check updates of ROOT SITE"
        "Update modules of ROOT SITE"
        "Check updates of core only ROOT SITE"
        "Show multisite information"
        "Update Database of any site"
        "Clear cache of any site"
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
        "Check updates of ROOT SITE")
            composer outdated
            ;;
        "Update modules of ROOT SITE")
            composer updated
            ;;
        "Check updates of core only ROOT SITE")
            composer outdated drupal/*
            ;;
        "Show multisite information")
            vendor/bin/drupal debug:multisite
            ;;
        "Update Database of any site")
            echo Insert site name
            read sitename
            vendor/bin/drupal --uri=$sitename update:execute
            ;;
        "Clear cache of any site")
            echo Insert site name
            read sitename
            vendor/bin/drupal --uri=$sitename cr
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
