#!/bin/bash

ROOT_UID=0     # Only users with $UID 0 have root privileges.
E_NOTROOT=87   # Non-root exit error.

# Run as root only
if [ "$UID" -ne "$ROOT_UID" ]
then
  echo "You need root priveledges to run this script"
  exit $E_NOTROOT
fi

echo -n "### Enter new user name: "
read NEW_USER
adduser $NEW_USER
echo -n "### make new user a sudoer? (y/n) "
read YES
case ${YES} in
y* )
adduser $NEW_USER sudo
;;
* )
continue
;;
esac

su $NEW_USER

echo "Done."

exit 0
