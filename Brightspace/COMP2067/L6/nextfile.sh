#!/bin/bash

# Variables
originalDir="$PWD"
# what is PWD##* ?
# https://stackoverflow.com/questions/965053/extract-filename-and-extension-in-bash
copydir="/c/Users/aaron/OneDrive/Documents/Comp2067_Marking/${PWD##*/}/"
downloads="/c/Users/aaron/Downloads"

# Functions

runFile() {
	python $1
	read -p "Press enter to open the code ..."
	code $1
	read -p "Press enter to continue ..."

}

moveFile() {
	echo "Moving to $downloads directory"
	cd "$downloads"

	echo "waiting 1 second"
	sleep 1

	echo "finding the most recent file"
	latest=$(ls -t *.py | head -1)

	echo "The most recent file is $latest"

	echo "Moving $latest to $copydir$1"
	mv "$latest" "$copydir$1"
	echo "Moved python files!"

	echo "Moving back to $originalDir"
	cd "$originalDir"

}

deleteFiles() {

	echo "Moving to $copydir directory"
	cd "$copydir"
	rm *.py
	echo "Deleted python files!"
	echo "Moving back to $originalDir"
	cd "$originalDir"
	echo "Done!"

}

mkdirectory() {
	echo "Making directory $1"
	mkdir -p "$1"
	echo "Made directory $1"
}

# Code

mkdirectory "$copydir"

echo "Deleting python files.."
deleteFiles
echo "Deleted python files!"

# Downloading file 1
cd automation
python downloadFile.py
cd ..
# Moving file 1
moveFile "work1.py"

bash ./runTests.sh

