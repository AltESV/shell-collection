#!/bin/bash

# List of URLs. Add your standard ones
urls=(
  "https://app.slack.com/client/xxxxxxxx"
  "xxxx"
  "xxxx"
  "xxxx"
  "xxxx"
  "xxxx"
  "xxxx"
  "xxxx"
)

# Path to Google Chrome. update based on which directory yours is in
chrome_path="/c/Program Files/Google/Chrome/Application/chrome.exe"

# Loop through URLs and open them in Chrome & send messages to null 
for url in "${urls[@]}"; do
  "$chrome_path" "$url" 2>/dev/null &
done
exit
