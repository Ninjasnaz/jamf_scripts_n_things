#!/bin/bash

# echo "Removing Apple Apps"
appstoremove=( "GarageBand"
    "iMovie"
    "Keynote"
    "Numbers"
    "Pages" )

for i in "${appstoremove[@]}"
do
    path="/Applications/"$i".app"
    echo "Removing "$path
    rm -rf $path
done
