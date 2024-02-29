#! /bin/bash

PROJECT_NAME=$1

# making directory structure.
function makeDirectoryStructure() {
  mkdir $PROJECT_NAME
  mkdir $PROJECT_NAME/src 
  mkdir $PROJECT_NAME/"test" 
}

# creating necessary files.

function creatFiles() {
  touch $PROJECT_NAME/"test"/$PROJECT_NAME-test.js
  touch $PROJECT_NAME/src/$PROJECT_NAME.js
  touch $PROJECT_NAME/runTest.sh
}

# setting up "exports" and "require" and demo_test in test file.

function test_framework() {

  echo "const {strictEqual, deepStrictEqual} = require('assert');
  const {describe, it} = require('node:test');"

}

function runtest_framework () {

  touch $PROJECT_NAME/runtest.sh
  chmod +x $PROJECT_NAME/runtest.sh
  echo "#! /bin/bash"
  echo "node test/$PROJECT_NAME-test.js"

}

function ignore_files() {
  echo "
  *.swp 
  .DC*
  "
}

function go_to_project_directory () {
  cd $PROJECT_NAME
} 

function setup_git () {
  echo ""
  git init
  ignore_files >> .gitignore
  git add .
  git status

}


function runtest () {
  ./runtest.sh
  echo ""
}

function main() {
  makeDirectoryStructure
  creatFiles
  test_framework >> $PROJECT_NAME/'test'/$PROJECT_NAME-test.js
  runtest_framework >> $PROJECT_NAME/runtest.sh 
  go_to_project_directory 
  runtest
  setup_git
}
main
