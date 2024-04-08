#!/bin/bash

if [[ "$BDEP_NEW_TYPE" == "library" ]]; then
  [[ $BDEP_NEW_NAME == libensketch-* ]] && exit
  echo "ERROR: Failed to create new build2 package!"
  echo ""
  echo "The given package name '$BDEP_NEW_NAME'"
  echo "does not start with 'libensketch-'."
  echo ""
elif [[ "$BDEP_NEW_TYPE" == "executable" ]]; then
  [[ $BDEP_NEW_NAME == ensketch-* ]] && exit
  if [[ $BDEP_NEW_NAME == libensketch-* ]]; then
    echo "WARNING: Executable package name starts with 'lib'!"
    echo ""
    echo "Please make sure that '$BDEP_NEW_NAME' is used"
    echo "to test parts of a library package that is"
    echo "contained in this package repository."
    echo ""
    exit
  fi
  echo "ERROR: Failed to create new build2 package!"
  echo ""
  echo "The given package name '$BDEP_NEW_NAME'"
  echo "does not start with 'ensketch-' or 'libensketch-'."
  echo ""
else
  exit
fi

exit 1
