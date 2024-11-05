#!/bin/bash


echo "enter the name of your new directory"
read directory
if [ -d "$directory" ]; then
echo "Directory '$directory' already exists."
else
mkdir "$directory"
echo "directory '$directory' created!!"
fi



