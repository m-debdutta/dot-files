#! /bin/bash

NUM=$1
FACTORIAL=1

if [ $NUM -le 1 ];then
  echo "1"
  exit
fi

for N_TH_TERM in $(jot $NUM)
do
  FACTORIAL=$(dc -e "$FACTORIAL $N_TH_TERM * p")
done

echo $FACTORIAL

