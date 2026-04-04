#!/usr/bin/env bash

set -euo pipefail

git config --global user.name "github-actions[bot]"
git config --global user.email "41898282+github-actions[bot]@users.noreply.github.com"
git pull --ff-only
git add -A -- bin

if git diff --cached --quiet; then
  exit 0
fi

git commit -m "[ci skip] Deploy nightly build"
git push origin HEAD:master
