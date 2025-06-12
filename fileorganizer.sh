#!/bin/bash

read -p "Enter directory name : "  dir

files=($(find "$dir" -maxdepth 1 -type f))

read -p "Enter extentions you want to separate : " -a ext

declare -A exts

fh="${dir}"

for i in "${ext[@]}"; do
	exts["$i"]="e"
	mkdir "${fh}${i}"
	
done

for file in "${files[@]}"; do
	val="${file##*.}"
	if [[ -n "$val" && -v exts["$val"] ]]; then
		sh="${file##*/}"
		np="${fh}/${val}/${sh}"
		mv "${file}" "${np}"
	fi
done

