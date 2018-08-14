#!/bin/bash

#get arguments
while getopts ":r:u:h" opt; do
	case ${opt} in
		u )
		username=$OPTARG
		;;
		r )
		reponame=$OPTARG
		;;
		h )
		echo "Usage: sh `basename $0` [options]"
		echo "	options:"
		echo "		[-u git-email]		input git user email"
		echo "		-r repository		assignment repository name to be cloned to local"
		exit
		;;
		\? )
		echo "Invalid option: $OPTARG" 1>&2
		echo "use -h option to check help file"
		exit 0
      	;;
	esac
done

if [ `[[ -v reponame ]]; echo $?` -eq "1" ]; then
	echo "No repository link is configured"
	echo "use -h option to check help file"
	exit 0
fi
if [ `[[ -v username ]]; echo $?` -eq "0" ]; then
	git config --global user.email $username
fi

#add commit and push
cd ~/$reponame
git add -A
git commit -m "student submission"
git push

echo ""
echo ""
echo "comparing local file and git repository"
echo "if nothing printed below, git commit and push is successful"
git diff origin/master