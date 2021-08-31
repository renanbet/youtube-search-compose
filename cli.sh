#!/bin/bash

Projects=(
  "youtube-search-server"
  "youtube-search-client"
)

if [ "$1" = "setup" ]
then
    for Project in "${Projects[@]}"
      do
        git clone "https://github.com/renanbet/$Project.git"
        mkdir database
        mkdir tests
        cd tests
        git clone "https://github.com/renanbet/$Project.git"
        mkdir database
        cd ..
      done
elif [ "$1" = "pull" ]
then
    for Project in "${Projects[@]}"
      do
        cd $Project
        git pull origin $2
        cd ..
        cd tests/$Project
        git pull origin $2
        cd ../..
      done
fi
