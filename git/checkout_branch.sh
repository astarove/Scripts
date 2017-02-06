#!/bin/bash

REVISION=${1}

if [ $REVISION ]
then
   git checkout master
   git remote update
   git pull
   git review -d $REVISION
   git branch
else
   echo "Revision number is required!"
fi

