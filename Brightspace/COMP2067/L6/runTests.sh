#!/bin/bash

# Variables
# Copied from nextfile.sh
copydir="/c/Users/aaron/OneDrive/Documents/Comp2067_Marking/${PWD##*/}/"
originalDir="$PWD"


# Functions

runFile() {
	python $1
	read -p "Press enter to open the code ..."
	code $1
	read -p "Press enter to continue ..."

}

runFileWithoutEditor() {
	python $1
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
	echo "$3"
}

runTestWithFileWithoutEditor() {
	echo "Running $1 on $2"
	runTest $1
	runFileWithoutEditor $2
	wait #syncs up the threads
	echo "$3"
}

# Code

echo "Moving to $copydir"
cd $copydir

read -p "Press enter to start the tests ..."
runTestWithFileWithoutEditor "testq1a.py" "work1.py" "Should be 168.75"
runTestWithFileWithoutEditor "testq1b.py" "work1.py" "Should be 337.5"
runTestWithFile "testq1c.py" "work1.py" "Should be 547.5"

echo "Moving back to $originalDir"
cd $originalDir
