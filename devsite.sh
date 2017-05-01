#!/bin/bash

magenta=$(tput setaf 5)
cyan=$(tput setaf 6)
red=$(tput setaf 1)
default=$(tput sgr0)

if [ -z "$1" ];then
  echo "${red}You must specify a directory to create.${default}"
else
  echo "${cyan}Creating new development project in ${magenta}`pwd`/$1 ${default}"
  git clone https://github.com/peledies/devsite.git $1 2>&1

  echo "${cyan}You will need to set the origin.${default}"
  git remote remove origin

  cd $1
  ./etc/scripts/setup.sh $1
fi