#!/bin/bash

FISH_NUMBER=$((FISH_NUMBER+1))
FISH_STR="fish$FISH_NUMBER"
echo "echo $FISH_STR" >> Fish.sh
./fishyprint.sh $FISH_NUMBER
/usr/bin/git add .
/usr/bin/git commit  -m "added $FISH_STR"
/usr/bin/git push origin master 

