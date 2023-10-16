#!/bin/bash

# If project is of type 'empty',
# successfully exit from script.
#
[[ "$BDEP_NEW_TYPE" == "empty" ]] && exit

# Otherwise, emit an error message and hints.
# At the end of the script, exit with failure code.
#
echo "ERROR: Failed to create new build2 project!"
echo ""
echo "For '$BDEP_NEW_MODE' mode only type 'empty' is allowed."
echo "The provided project type '$BDEP_NEW_TYPE'"
echo "should only be used in 'package' mode."
echo "Run the following commands to fix this issue."
echo ""
echo "  rmdir $BDEP_NEW_NAME"
echo "  bdep new -t empty $BDEP_NEW_NAME"
echo "  cd $BDEP_NEW_NAME"

if [[ "$BDEP_NEW_TYPE" == "library" ]]; then
  echo "  bdep new --package -t lib $BDEP_NEW_NAME"
elif [[ "$BDEP_NEW_TYPE" == "executable" ]]; then
  echo "  bdep new --package -t exe $BDEP_NEW_NAME"
else
  echo "  bdep new --package -t bare $BDEP_NEW_NAME"
fi

echo ""

exit 1
