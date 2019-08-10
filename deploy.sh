#!/bin/env bash

git config --global user.name "CircleCI"
git config --global user.email "<>"
git add -A
git commit -m "[ci skip] Deploy nightly build"

git push $(git config --get remote.origin.url) master:master
