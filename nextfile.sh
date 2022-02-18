#!/bin/bash

# Variables
originalDir="$PWD"
copydir="/c/Users/aaron/Documents/Comp 2067 Marking/Lab 2/lab2sol.py"
downloads="/c/Users/aaron/Downloads"

# Code

echo "Deleting python files.."
rm *.py
echo "Deleted python files!"

# Downloading file
cd automation
python downloadFile.py
cd ..

echo "Moving to $downloads directory"
cd "$downloads"

echo "waiting 1 second"
sleep 1

echo "finding the most recent file"
latest=$(ls -t *.py | head -1)

echo "The most recent file is $latest"

echo "Moving $latest to $copydir"
mv "$latest" "$copydir"
echo "Copied python files!"

echo "Moving back to $originalDir"
cd "$originalDir"

python lab2sol.py
read -p "Press any key to open the code ..."
code lab2sol.py