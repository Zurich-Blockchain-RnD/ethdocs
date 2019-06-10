#!/bin/sh

setup_git() {
  git config --global user.email "abhi.codes0@gmail.com"
  git config --global user.name "cryptoabhi"
  git remote add origin https://github.com/ethdocs/ethdocs.github.io
}

commit_website_files() {
  git add .
  git commit --message "Travis build: $TRAVIS_BUILD_NUMBER"
}

upload_files() {
  git push --force origin master
}

cd _docpress
setup_git
commit_website_files
upload_files