#!/usr/bin/env bash
# Demonstrates basic validation and explicit error handling.

set -u

input_file="${1:-}"

if [[ -z "$input_file" ]]; then
    printf 'Usage: %s FILE\n' "$0" >&2
    exit 2
fi

if [[ ! -f "$input_file" ]]; then
    printf 'Error: not a regular file: %s\n' "$input_file" >&2
    exit 1
fi

if [[ ! -r "$input_file" ]]; then
    printf 'Error: file is not readable: %s\n' "$input_file" >&2
    exit 1
fi

line_count="$(wc -l < "$input_file")" || {
    printf 'Error: could not count lines.\n' >&2
    exit 1
}

printf 'File: %s\nLine count: %s\n' "$input_file" "$line_count"
