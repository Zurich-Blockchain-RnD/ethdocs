#!/bin/sh

setup_git() {
  git config --global user.email "abhi.codes0@gmail.com"
  git config --global user.name "cryptoabhi"
}

commit_website_files() {
  git checkout -b gh-pages
  git add . *
  git commit --message "Travis build: $TRAVIS_BUILD_NUMBER"
}

upload_files() {
  git remote add origin https://github.com/ethdocs/ethdocs.github.io
  git push --force origin master
}

setup_git
commit_website_files
upload_files