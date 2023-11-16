#!/bin/bash

echo "Please enter the filename:"
read filename

if [ ! -f "$filename" ]; then
  echo "File not found: $filename"
  exit 1
fi

awk -F, '{print $2}' "$filename" | while read email; do
  echo -n "$email" | sha256sum | awk '{print $1}'
done > output.csv

echo "Hashed email addresses have been saved to output.csv"

