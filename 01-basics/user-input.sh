#!/usr/bin/env bash
# Ask for input and validate that it is not empty.

read -r -p "Enter your name: " user_name

if [[ -z "$user_name" ]]; then
    printf 'Name cannot be empty. Please try again.\n' >&2
    exit 1
fi

printf 'Nice to meet you, %s!\n' "$user_name"
exit 0
