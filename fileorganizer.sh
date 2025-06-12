#!/bin/bash

read -p "Enter directory name : "  dir

#echo "files and sub directories inside : "

files=($(find "$dir" -maxdepth 1 -type f))

#echo "${files[@]}"

for file in "${files[@]}"; do
	echo "$file"
done

# take input as an array for what extentions the user wants to create files
# create assosiate array 
# turn them into arrays after storing them 

