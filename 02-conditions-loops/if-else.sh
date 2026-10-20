#!/usr/bin/env bash
# Check whether a path supplied by the user exists.

read -r -p "Enter a file or directory path: " target

if [[ -f "$target" ]]; then
    printf 'This is a regular file.\n'
elif [[ -d "$target" ]]; then
    printf 'This is a directory.\n'
elif [[ -e "$target" ]]; then
    printf 'The path exists, but is not a regular file or directory.\n'
else
    printf 'The path does not exist.\n'
fi
