#!/bin/sh
# If any part of the script fails the deploy stops 
set -e

# Status message
printf "\033[0;32mDeploying updates to GitHub…\033[0m\n" 

# Go To Public folder 
cd public 

git checkout -- .

git checkout main

rm -rf *

cd ..

# Build the project. 
hugo

cd public

# Add changes to git. 
git add .
git commit -m "New build"

# Push source and deploy. 
git push -f origin main