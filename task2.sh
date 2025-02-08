#!/bin/bash

# Define the input file
FILE="sample.txt"

# Check if the file exists
if [[ ! -f "$FILE" ]]; then
  echo "Error: $FILE not found!"
  exit 1
fi

echo "Lines containing 'banana':"
grep -n "banana" "$FILE"

echo -e "\nLines that do not contain 'banana':"
grep -v -n "banana" "$FILE"

echo -e "\nUnique lines in the file:"
sort "$FILE" | uniq 

echo -e "\nCount of each unique line:"
sort "$FILE" | uniq -c

echo -e "\nCount occurrences of 'banana' lines:"
grep "banana" "$FILE" | sort | uniq -c