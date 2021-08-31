#!/bin/sh
# If any part of the script fails the deploy stops 
set -e

# Status message
printf "\033[0;32mDeploying updates to GitHub…\033[0m\n" 

# Build the project. 
hugo

# Go To Public folder 
cd public 

git checkout main

# Add changes to git. 
git add .
git commit -m "New build"

# Push source and deploy. 
git push -f origin main