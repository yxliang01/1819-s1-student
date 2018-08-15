#!/bin/bash

#get reponame from env variable
gitorg="nus-cs1010-1819-s1"
assignment="test-assignment-1819-2"
reponame="https://github.com/$gitorg/$assignment-$GIT_USER.git"

#navigate to home address and clone the student assignment repo
cd ~
git config user.name $GIT_USER
git clone $reponame

echo "check your cloned repository in your home directory to start work!"