#!/bin/bash

#get reponame from env variable
gitorg="nus-cs1010-1819-s1"
assignment="test-assignment-1819-2"
reponame="$assignment-$GIT_USER"

#add commit and push
cd ~/$reponame
git config user.name $GIT_USER
git add -A
git commit -m "student submission"
git push

echo ""
echo ""
echo "comparing local file and git repository"
echo "if nothing printed below, git commit and push is successful"
git diff origin/master