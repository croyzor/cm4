#!/bin/bash
FISH_NUMBER="$(awk 'END {print $NF}' Fish.sh | sed 's/[^0-9]//g')"
FISH_NUMBER=$((FISH_NUMBER+1))
FISH_STR="fish$FISH_NUMBER"
echo "echo $FISH_STR" >> Fish.sh
./fishyprint.sh $FISH_NUMBER > README.md
/usr/bin/git add .
/usr/bin/git commit  -m "added $FISH_STR"
