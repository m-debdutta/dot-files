#! /bin/bash

PROJECT_NAME=$1
WORKING_DIRECTORY=/Users/debdutta/practice/js/work_space/$PROJECT_NAME

# making directory structure.

mkdir $PROJECT_NAME
mkdir $PROJECT_NAME/src 
mkdir $PROJECT_NAME/"test" 
mkdir $PROJECT_NAME/lib


# making necessary files.

touch $PROJECT_NAME/runtest.sh


# copying test framework in test/testing.js directory.

cp /Users/debdutta/bin/test_framework.js $PROJECT_NAME/lib/testing.js


# setting up "exports" and "require" and demo_test in test file.

echo "const demoTest = require('../lib/testing.js');" >> $PROJECT_NAME/'test'/$PROJECT_NAME-test.js
echo "const demoSrc = require('../src/$PROJECT_NAME.js');\n" >> $PROJECT_NAME/'test'/$PROJECT_NAME-test.js

echo "demoTest.assertEqual(1,demoSrc.checkExports(1),"One is equal to one.");" >> $PROJECT_NAME/'test'/$PROJECT_NAME-test.js
echo "demoTest.assertEqual(1,demoSrc.checkExports(2),"Two is not-equal to one.");" >> $PROJECT_NAME/'test'/$PROJECT_NAME-test.js
echo "demoTest.assertArrayEqual([2, 4, 6],demoSrc.checkExports([2, 4, 6]),"Set of even numbers should contain even numbers.");" >> $PROJECT_NAME/'test'/$PROJECT_NAME-test.js
echo "demoTest.assertArrayEqual([2, 4, 6],demoSrc.checkExports([2, 4, 5]),"Set of even numbers should not contain odd numbers.");" >> $PROJECT_NAME/'test'/$PROJECT_NAME-test.js


# copying demoProject.js in src/project.js

cp ~/bin/demo-project.js $PROJECT_NAME/src/$PROJECT_NAME.js


# setting up automatic runtest.sh

touch $PROJECT_NAME/runtest.sh
chmod +x $PROJECT_NAME/runtest.sh
echo "#! /bin/bash" >> $PROJECT_NAME/runtest.sh
echo "autorun node vending-machine/test/test-vending-machine.js" >> $PROJECT_NAME/runtest.sh
