#!/bin/sh

printf "\033[0;32mDeploying updates to GitHub...\033[0m\n"

# Build the project.
hugo

# Go To Public folder
cd public

# Add changes to git
git pull master

git commit -m "host"

# Push source and build repos.
git push origin master
