#!/bin/bash

if [ "$1" = "setup" ]
then
  arquivo="branches"

  while IFS== read var1 var2; do
    git clone "https://github.com/renanbet/$var1.git"
    cd tests
    git clone "https://github.com/renanbet/$var1.git"
    cd ..
  done < "$arquivo"

  arquivo="config.env"

  while IFS== read var1 var2; do
      sed -i "s/#$var1/$var2/" docker-compose.yml
      sed -i "s/#$var1/$var2/" tests/docker-compose.yml
  done < "$arquivo"
elif [ "$1" = "env" ]
then
  arquivo="config.env"

  while IFS== read var1 var2; do
  echo $var1
  echo $var2
      sed -i "s/#$var1/$var2/" docker-compose.yml
      sed -i "s/#$var1/$var2/" tests/docker-compose.yml
  done < "$arquivo"
elif [ "$1" = "pull" ]
then
  arquivo="branches"

  while IFS== read var1 var2; do
    cd $var1
    git pull origin $var2
    cd ..
  done < "$arquivo"
fi