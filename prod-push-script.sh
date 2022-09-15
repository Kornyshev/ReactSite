#! /bin/bash

echo "Creating dir and initializing Git repo"
mkdir prod
cd prod/
git clone https://github.com/Kornyshev/ReactSiteProdBuild.git
git config --global user.email "you@example.com"
git config --global user.name "GitHub Action"
cd ReactSiteProdBuild/
pwd
echo "Cloned repository:"
ls -la
echo "=========================="

echo "Copy build files to prod/"
cp -r -f ../../build/* .
echo "=========================="

echo "Commit"
git add .
git commit -am "Release commit"
ls -la
echo "=========================="

echo "Push"
git push -u origin master
echo "=========================="