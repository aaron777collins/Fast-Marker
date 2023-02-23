#!/bin/bash

# Variables
originalDir="$PWD"
copydir="/c/Users/aaron/Documents/Comp 2067 Marking/${PWD##*/}/"
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

# Code

echo "Deleting python files.."
rm *.py
echo "Deleted python files!"

# Downloading file 1
cd automation
python downloadFile.py
cd ..
# Moving file 1
moveFile "work1.py"

# Downloading file 2
cd automation
python downloadFile2.py
cd ..
# Moving file 2
moveFile "work2.py"

# Downloading file 3
cd automation
python downloadFile3.py
cd ..
# Moving file 3
moveFile "work3.py"

bash ./runTests.sh

