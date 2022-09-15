#! /bin/bash

echo "Making directory"
mkdir prod

echo "Switching to prod/"
cd prod/

echo "Git init"
git init

echo "Config Git"
git config --global user.email "you@example.com"
git config --global user.name "GitHub Action"

echo "Add remoter repo and pull"
git remote add origin https://github.com/Kornyshev/ReactSiteProdBuild.git
git pull origin master
ls -la

echo "Copy build files to prod/"
cp -r ../build/* .

echo "Commit and push"
git branch --set-upstream-to=origin/master master
git add .
git commit -m "Release commit"
git push --set-upstream origin master