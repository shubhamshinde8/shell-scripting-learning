#!/usr/bin/env bash
# Variables store values for reuse.

first_name="Shubham"
topic="Bash scripting"

printf 'Hello, %s!\n' "$first_name"
printf 'Today we are learning %s.\n' "$topic"

# Command substitution stores the output of a command.
today="$(date +%F)"
printf 'Date: %s\n' "$today"

# Quote variables to preserve spaces and avoid word splitting.
