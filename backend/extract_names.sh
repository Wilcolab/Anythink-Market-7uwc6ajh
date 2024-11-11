#!/bin/bash

# Check if a file was provided as an argument
if [ -z "$1" ]; then
    echo "Usage: $0 <signup_file.csv>"
    exit 1
fi

# Read the file and filter for amazon.com emails
# Assuming CSV columns are in the order: first_name, last_name, email
awk -F ',' 'tolower($3) ~ /@amazon\.com$/ { print $1, $2 }' "$1"