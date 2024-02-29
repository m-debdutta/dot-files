#! /bin/bash

function add() {
  local NUMBER1=$1
  local NUMBER2=$2
  echo  "$NUMBER1 + $NUMBER2" | bc
}

function sub() {
  local NUMBER1=$1
  local NUMBER2=$2
  echo "$NUMBER1 - $NUMBER2" | bc
}

function mul() {
  local NUMBER1=$1
  local NUMBER2=$2
  echo "$NUMBER1 * $NUMBER2" | bc
}

function div() {
  local NUMBER1=$1
  local NUMBER2=$2
  echo "$NUMBER1 / $NUMBER2" | bc
}

function get_distance() {
  local X1=$1
  local Y1=$2
  local X2=$3
  local Y2=$4
  echo "sqrt (($X1 - $X2) ^ 2 + ($Y1 - $Y2) ^ 2)" | bc
}


################################# COLORS ####################################

function text_style() {
  local TEXT="$1"
  local STYLE_CODE=$2
  echo -e "\033[${STYLE_CODE}m${TEXT}\033[0m"
}

function green() {
  local TEXT="$1"
  local COLOR_CODE=31
  text_style "$TEXT" $COLOR_CODE
}

function red() {
  local TEXT="$1"
  local COLOR_CODE=31
  echo $(text_style "$TEXT" $COLOR_CODE)
}

function grey() {
  local TEXT="$1"
  local COLOR_CODE=37
  text_style "$TEXT" $COLOR_CODE
}

function purple() {
  local TEXT="$1"
  local COLOR_CODE=35
  text_style "$TEXT" $COLOR_CODE
}

function cyan() {
  local TEXT="$1"
  local COLOR_CODE=36
  text_style "$TEXT" $COLOR_CODE
}

function brown() {
  local TEXT="$1"
  local COLOR_CODE=33
  text_style "$TEXT" $COLOR_CODE
}

function black() {
  local TEXT="$1"
  local COLOR_CODE=30
  text_style "$TEXT" $COLOR_CODE
}

function blue() {
  local TEXT="$1"
  local COLOR_CODE=34
  text_style "$TEXT" $COLOR_CODE
}

function yellow() {
  local TEXT="$1"
  local COLOR_CODE="1;33"
  text_style "$TEXT" $COLOR_CODE
}

function white() {
  local TEXT="$1"
  local COLOR_CODE="1;37"
  text_style "$TEXT" $COLOR_CODE
}

function light_red() {
  local TEXT="$1"
  local COLOR_CODE="1;31"
  text_style "$TEXT" $COLOR_CODE 
}

function light_green() {
  local TEXT="$1"
  local COLOR_CODE="1;32"
  text_style "$TEXT" $COLOR_CODE
}

function b_green() {
  local TEXT="$1"
  local COLOR_CODE=41
  text_style "$TEXT" $COLOR_CODE
}

function b_red() {
  local TEXT="$1"
  local COLOR_CODE=41
  echo $(text_style "$TEXT" $COLOR_CODE)
}

function b_grey() {
  local TEXT="$1"
  local COLOR_CODE=47
  text_style "$TEXT" $COLOR_CODE
}

function b_purple() {
  local TEXT="$1"
  local COLOR_CODE=45
  text_style "$TEXT" $COLOR_CODE
}

function b_cyan() {
  local TEXT="$1"
  local COLOR_CODE=46
  text_style "$TEXT" $COLOR_CODE
}

function b_brown() {
  local TEXT="$1"
  local COLOR_CODE=44
  text_style "$TEXT" $COLOR_CODE
}

function b_black() {
  local TEXT="$1"
  local COLOR_CODE=40
  text_style "$TEXT" $COLOR_CODE
}

function b_blue() {
  local TEXT="$1"
  local COLOR_CODE=44
  text_style "$TEXT" $COLOR_CODE
}

function b_yellow() {
  local TEXT="$1"
  local COLOR_CODE="1;44"
  text_style "$TEXT" $COLOR_CODE
}

function b_white() {
  local TEXT="$1"
  local COLOR_CODE="1;47"
  text_style "$TEXT" $COLOR_CODE
}

function b_light_red() {
  local TEXT="$1"
  local COLOR_CODE="1;41"
  text_style "$TEXT" $COLOR_CODE 
}

function b_light_green() {
  local TEXT="$1"
  local COLOR_CODE="1;42"
  text_style "$TEXT" $COLOR_CODE
}

function underline() {
  local TEXT="$1"
  local STYLE_CODE=4
  text_style "$TEXT" $STYLE_CODE
}

function bold() {
  local TEXT="$1"
  local STYLE_CODE=1
  text_style "$TEXT" $STYLE_CODE
}

function blink() {
  local TEXT="$1"
  local STYLE_CODE=5
  text_style "$TEXT" $STYLE_CODE
}

#================================== COLORS =================================

function power() {
  local NUMBER=$1
  local EXPONENT=$2
  echo "$NUMBER ^ $EXPONENT" | bc
}


