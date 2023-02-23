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
}

runTestWithFileWithoutEditor() {
	echo "Running $1 on $2"
	runTest $1
	runFileWithoutEditor $2
	wait #syncs up the threads
}

# Code

echo "Moving to $copydir"
cd $copydir

read -p "Press enter to start the tests ..."
runTestWithFileWithoutEditor "testq1a.py" "work1.py"
runTestWithFileWithoutEditor "testq1b.py" "work1.py"
runTestWithFile "testq1c.py" "work1.py"

echo "Moving back to $originalDir"
cd $originalDir
