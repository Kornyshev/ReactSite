#! /bin/bash

echo "Creating dir and initializing Git repo"
mkdir prod
cd prod/
git init
git config --global user.email "you@example.com"
git config --global user.name "GitHub Action"
git remote add origin https://github.com/Kornyshev/ReactSiteProdBuild.git
echo "=========================="

git pull origin master
echo "Pulled repository:"
ls -la
echo "=========================="

echo "Copy build files to prod/"
cp -r -f ../build/* .
echo "=========================="

echo "Commit"
git branch --set-upstream-to=origin/master master
git add .
git commit -m "Release commit"
ls -la
echo "=========================="

echo "Push"
git push -u origin master
echo "=========================="