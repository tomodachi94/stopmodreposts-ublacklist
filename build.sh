#!/usr/bin/env bash

mkdir _site

cat ./Illegal-Mod-Sites/lists/*.yaml | yq -r '.[]| select (.path == "/")|.domain' > _site/all.txt

# LISTS=(./Illegal-Mod-Sites/lists/*.yaml)

# for i in "${LISTS[@]}"
# do
#	i=$(echo $i | sed 's/\.[^./]*$//g')
#	# out=$(echo $i | sed 's/Illegal-Mod-Sites\/lists\/g')
#	cat $i.yaml | yq -r '.[]| select (.path == "/")|.domain' > "./out/$out.txt"
# done


