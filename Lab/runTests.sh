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

# Code

read -p "Press enter to start the tests ..."
runTest "lab4test1.py"
runFile "work1.py"
wait #syncs up the threads


runTest "lab4test2.py"
runFile "work1.py"
wait #syncs up the threads


runTest "lab4test3.py"
runFile "work1.py"
wait #syncs up the threads
