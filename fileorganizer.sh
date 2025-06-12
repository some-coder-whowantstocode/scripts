#!/bin/bash

read -p "Enter directory name : "  dir

#echo "files and sub directories inside : "

files=($(find "$dir" -maxdepth 1 -type f))

#echo "${files[@]}"

for file in "${files[@]}"; do
	echo "$file"
done
