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

# Loop through the URLs and open them in Chrome
for url in "${urls[@]}"; do
  "$chrome_path" "$url" &
done
