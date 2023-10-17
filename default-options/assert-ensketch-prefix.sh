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
  echo "ERROR: Failed to create new build2 package!"
  echo ""
  echo "The given package name '$BDEP_NEW_NAME'"
  echo "does not start with 'ensketch-'."
  echo ""
else
  exit
fi

exit 1
