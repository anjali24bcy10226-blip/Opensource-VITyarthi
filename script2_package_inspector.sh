#!/bin/bash
# Script 2: FOSS Package Inspector
# Name: Anjali Patni
# Description: Checks if a package is installed and displays its details.

echo "Enter package name:"
read package

if dpkg -l | grep -q "$package"; then
    echo "Package is installed."

    version=$(dpkg -l | grep "$package" | awk '{print $3}')
    echo "Version: $version"

    case $package in
        git)
            echo "Description: Distributed version control system."
            ;;
        vim)
            echo "Description: Text editor for programming."
            ;;
        curl)
            echo "Description: Tool for transferring data using URLs."
            ;;
        *)
            echo "Description: General open-source software package."
            ;;
    esac
else
    echo "Package is NOT installed."
fi
