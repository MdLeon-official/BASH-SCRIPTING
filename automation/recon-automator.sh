#!/bin/bash
read -p "Enter target's url: " url

if [[ "$url" == *"."* ]]
then
    echo "------------"
    echo "  wafw00f  "
    echo "------------"
    wafw00f "$url"

    read -p "Do you want to run 'host' tool? (y/n): " host
    if [[ "$host" == 'y' || "$host" == 'yes' ]]
    then
        echo "------------"
        echo "  host  "
        echo "------------"
        host "$url"
    fi

    read -p "Do you want to run 'whois' tool? (y/n): " whois
    if [[ "$whois" == 'y' || "$whois" == 'yes' ]]
    then
        echo "------------"
        echo "  whois  "
        echo "------------"
        whois "$url"
    fi
    read -p "Do you want to run 'whatweb' tool? (y/n): " whatweb
    if [[ "$whatweb" == 'y' || "$whatweb" == 'yes' ]]
    then
        echo "------------"
        echo "  whatweb  "
        echo "------------"
        whatweb "$url"
    fi

else
    echo "Please provide a valid url (example.com)"
fi
