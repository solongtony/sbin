#!/usr/bin/env bash
# Make a link in user's bin for each file which does not end in .md

for file in $(ls -p | grep -v -e / -e "md$")
do
  ln -s $(realpath "$file") ~/bin/
done
