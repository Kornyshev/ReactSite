#! /bin/bash

echo "Making directory"
mkdir prod

echo "Switching to prod/"
cd prod/

echo "Git init"
git init

echo "Add remoter repo and pull"
git remote add origin https://github.com/Kornyshev/ReactSiteProdBuild.git
git pull

echo "Copy build files to prod/"
cp -r ../build/* .

echo "Commit and push"
git add .
git commit -m "Release commit"
git push