#!/bin/bash

# Add directory to store Git hooks.
# This allows to version control hooks.
#
mkdir .githooks

# Add good commit message as submodule
#
git submodule add \
  https://github.com/ensketch/git-good-commit-msg.git \
  .githooks/good-commit-msg

# Make it the default commit message hook
# by using symbolic links.
#
ln -s good-commit-msg/hook.sh .githooks/commit-msg
