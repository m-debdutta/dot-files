#! /bin/bash

# AIM: to restore a specific backup file to a specific directory

# FORMAT: ./c_restore [backup_file_name] [restore_location]

# TEST: ./c_restore file_ddmmyyyy_HHMM.tar.gz directory

BACKUP_FILE_PATH=$1
RESTORE_LOCATION=$2

tar xvf $BACKUP_FILE_PATH -C $RESTORE_LOCATION
