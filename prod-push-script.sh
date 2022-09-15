#! /bin/bash

git config --global user.email "you@example.com"
git config --global user.name "GitHub Action"

cd ..
ls -la

git clone https://github.com/Kornyshev/ReactSiteProdBuild.git
cd ReactSiteProdBuild/
ls -la

cp -r -f ../ReactSite/build/* .
git status
git add .
git commit -am "Release commit"
git push