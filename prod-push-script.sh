#! /bin/bash

echo "\nCreating dir and initializing Git repo\n"
mkdir prod
cd prod/
git init
git config --global user.email "you@example.com"
git config --global user.name "GitHub Action"
git remote add origin https://github.com/Kornyshev/ReactSiteProdBuild.git
echo "=========================="

git pull origin master
echo "\nPulled repository:\n"
ls -la
echo "=========================="

echo "\nCopy build files to prod/\n"
cp -r -f ../build/* .
ls -la
echo "=========================="

echo "\nCommit\n"
git branch --set-upstream-to=origin/master master
git add .
git commit -m "Release commit"
ls -la
echo "=========================="

echo "\nPush\n"
git push -u origin
echo "=========================="