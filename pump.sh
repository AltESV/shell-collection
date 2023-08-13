#!/bin/bash

#path
dir="c:\users\danie\downloads\puppeteer"

cd "$dir" || exit

for ((i=0; i<4; i++)); do
	npm start
done
