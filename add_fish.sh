#!/bin/bash	
/bin/cd /Users/ross/git/cm4/cm4
FISH_NUMBER="$(awk 'END {print $NF}' Fish.sh | sed 's/[^0-9]//g')"
FISH_NUMBER=$((FISH_NUMBER+1))
FISH_STR="fish$FISH_NUMBER"
/bin/echo "echo $FISH_STR" >> Fish.sh
/usr/bin/git add .
/usr/bin/git commit -a  -m "added $FISH_STR"
/usr/bin/git push origin master

