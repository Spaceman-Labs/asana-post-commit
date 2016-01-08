#!/bin/bash

if [ ! -d .git/hooks ]
then
	mkdir .git/hooks
fi
curl https://raw.githubusercontent.com/Spaceman-Labs/asana-post-commit/master/post-commit > .git/hooks/post-commit
chmod 755 .git/hooks
chmod ogu+rx .git/hooks/post-commit
token=`git config --global --get user.asana-token`
if [ -z "$token" ]
then
	read -r -p "Enter your Asana personal access token (get it at http://app.asana.com/-/account_api): " token
	git config --global user.asana-token $token
fi
