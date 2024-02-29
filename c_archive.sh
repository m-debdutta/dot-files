#! /bin/bash

# backup file_name syntax : file_ddmmyyyy_HHMM.tar.gz

# ./archive ~/practice/debdutta Backup_debdutta 
# ./archive ../debdutta/old_program Backup_program

DIRECTORY_TO_ARCHIVE=$1
FILE_NAME=$2

#error if directory is not found
if [  ! -d $DIRECTORY_TO_ARCHIVE ]; then
  echo "c_archive: $DIRECTORY_TO_ARCHIVE: directory not found"
  exit 1
fi

#error for multiple arguments
if [ $3 ]; then 
  echo "c_archive: $3: too many arguments"
  exit 1 
fi



TIME_STAMP=$(date "+%d%m%Y_%H%M")
BACKUP_LOCATION=~/.backup/$FILE_NAME\_$TIME_STAMP.tar.gz

tar cfz $BACKUP_LOCATION -C $DIRECTORY_TO_ARCHIVE .
