#!/bin/bash
cd /home/ross/git/cm4
auth='find /tmp -user $LOGNAME -type s -name "*agent*" -print 2>/dev/null'
SSH_AUTH_SOCK=$auth
export SSH_AUTH_SOCK
FISH_NUMBER="$(/usr/bin/awk 'END {print $NF}' Fish.sh | /usr/bin/sed 's/[^0-9]//g')"
FISH_NUMBER=$((FISH_NUMBER+1))
FISH_STR="fish$FISH_NUMBER"
/usr/bin/echo "echo $FISH_STR" >> Fish.sh
/usr/bin/git add .
/usr/bin/git commit  -m "added $FISH_STR"
/usr/bin/git push origin master 

