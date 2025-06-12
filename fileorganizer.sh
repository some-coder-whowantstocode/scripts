#!/bin/bash

read -p "Enter directory name : "  dir

#echo "files inside : "

files=($(find "$dir" -maxdepth 1 -type f))

#echo "${files[@]}"

#for file in "${files[@]}"; do
#echo "$file"
#done

read -p "Enter extentions you want to separate : " -a ext

for i in "${ext[@]}"; do
	mkdir "i"
done


for file in "${files[@]}"; do
echo "$file"
done

# take input as an array for what extentions the user wants to create files
# create assosiate array 
# turn them into arrays after storing them 

