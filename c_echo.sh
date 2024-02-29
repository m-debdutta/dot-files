#! /bin/bash

# input sample:
# c_echo fcolor bcolor style "text"

function text_style() {
  local TEXT="$1"
  local STYLE_CODE=$2
  echo -e "\033[${STYLE_CODE}m${TEXT}\033[0m"
}

TEXT="$1"


for OPTION in $2 $3 $4 $5 $6
do
  for CODE in 
    check_case $OPTION
  done












  for OPTION in $4 $2 $3 $5 $6 $7 $8
  do
    case $OPTION in
      normal)     CODE=0;;
      underline)  CODE=4;;
      bold)       CODE=1;;
      blink)      CODE=5;;
      revert)     CODE=7;;
      fgblack)    CODE=30;;
      fgred)      CODE=31;;
      fggreen)    CODE=32;;
      fgbrown)    CODE=33;;
      fgblue)     CODE=34;;
      fgpurple)   CODE=35;;
      fgcyan)     CODE=36;;
      fgyellow)   CODE="1;33";;
      fggrey)     CODE="1;30";;
      fglightred) CODE="1;31";;
      fglightgreen) CODE="1;32";;
      fgwhite)    CODE="1;37";;
      bgred)      CODE=41;;
      bggreen)    CODE=42;;
      bgbrown)    CODE=43;;
      bgblue)     CODE=44;;
      bgpurple)   CODE=45;;
      bgcyan)     CODE=46;;
      bgyellow)   CODE="1;43";;
      bggrey)     CODE="1;40";;
      bglightred) CODE="1;41";;
      bglightgreen) CODE="1;42";;
      bgwhite)    CODE="1;47";;
      bgblack)    CODE="40";;
      *) TEXT=$TEXT;;
    esac
    TEXT=$(text_style "$TEXT" "$")
  done
  echo $TEXT
