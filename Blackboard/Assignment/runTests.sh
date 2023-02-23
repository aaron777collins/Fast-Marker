#!/bin/bash

# Functions

runFile() {
	python $1
	read -p "Press enter to open the code ..."
	code $1
	read -p "Press enter to continue ..."

}

runTest() {
	cd automation
	python $1 &
	cd ..
}

runTestWithFile() {
	echo "Running $1 on $2"
	runTest $1
	runFile $2
	wait #syncs up the threads
}

# Code

read -p "Press enter to start the tests ..."
runTestWithFile "testq1a.py" "work1.py"
runTestWithFile "testq1b.py" "work1.py"
runTestWithFile "testq2a.py" "work2.py"
runTestWithFile "testq2b.py" "work2.py"
runTestWithFile "testq2c.py" "work2.py"
runTestWithFile "testq3a.py" "work3.py"
runTestWithFile "testq3b.py" "work3.py"
runTestWithFile "testq3c.py" "work3.py"
runTestWithFile "testq3d.py" "work3.py"
