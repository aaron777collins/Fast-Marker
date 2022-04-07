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
runTestWithFile "test1.py" "work1.py"
runTestWithFile "test2.py" "work1.py"
runTestWithFile "test3.py" "work1.py"