#!/bin/bash

mkdir .githooks

git submodule add \
  https://github.com/ensketch/git-good-commit-msg.git \
  .githooks/good-commit-msg

ln -s good-commit-msg/hook.sh .githooks/commit-msg
