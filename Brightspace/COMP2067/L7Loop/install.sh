#!/bin/bash
echo "installing packages"
cd automation
python install.py
cd ..

# copying automation to copydir
copydir="/c/Users/aaron/OneDrive/Documents/Comp2067_Marking/${PWD##*/}/"

echo "Copying automation to $copydir"
cp -r automation $copydir

echo "Done!"
