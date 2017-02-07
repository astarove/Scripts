#!/bin/bash

REVISION=${1}

git checkout master
git remote update
git pull

if [ $REVISION ]
then
   git review -d $REVISION
   git branch
else
   echo "Revision number is missed, switching on MASTER"
fi


