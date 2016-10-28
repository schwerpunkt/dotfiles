#!/bin/bash

# be in the root of your git repo
# parameter is path to submodule

PARAM=$(echo "$1/" | tr -s /) # remove trailing ////
PARAM=${PARAM%/}

PATH=./${PARAM%/*}/ # get path
MODULE=${PARAM##*/} # get module

USAGE="Usage: .../removeSubmodule.sh RELATIVE_PATH_TO_MODULE_FROM_GIT_ROOT"

if [ ! -d "$PATH" ]
then
  echo $USAGE
  echo "$PATH does not exist"
  exit
fi

if [ ! -d "$PATH$MODULE" ]
then
  echo $USAGE
  echo "$PATH$MODULE does not exist"
  exit
 fi

if [ ! -d "./.git" ]
then
  echo $USAGE
  echo "You are not in git root"
fi

/usr/bin/git submodule deinit $PATH$MODULE
/usr/bin/git rm $PATH$MODULE
/usr/bin/rm -rf .git/modules/$MODULE
