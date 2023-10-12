#!/bin/bash

# Recursively remove all '.gitignore' files
# starting from the current directory.
#
rm $(find . -type f -name .gitignore)
