#!/bin/sh
#This hook lists qvw files from the status message and does a no-data load and saves them again
#This to save some space in the repos

REPOS_PATH=`pwd`

for FILE in `git status| grep -E "modified.*qvw" | awk '{ print $3 }'`; do
 #lets do some no-data
 cscript //nologo .git/hooks/qv-nodata.vbs $REPOS_PATH $FILE
 #need to add the changed filed again because of the new changes
 git add $FILE
done
exit 0