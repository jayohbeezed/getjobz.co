#!/bin/bash

set -e

hugo

cd public

git init
git remote add origin https://github.com/jayohbeezed/getjobz.co
git checkout -b gh-pages
git add .
git commit -m "Deploy to gh-pages"
git push --force origin gh-pages

cd ..