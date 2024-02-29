#! /bin/bash

COMMAND=$1
ABS=~/.my_man_files

# c_restore.sh
if [ $COMMAND = "c_restore.sh" ]; then
  vim $ABS/man_$1
  exit
fi

#c_archive.sh
if [ $COMMAND = "c_archive.sh" ]; then
  vim $ABS/man_$1
  exit
fi

#c_factorial
