#!/usr/bin/env bash
# Read-only checks for a path. No files are created or deleted.

read -r -p "Enter a path to check: " target

if [[ -f "$target" ]]; then
    printf 'Regular file: yes\n'
    [[ -r "$target" ]] && printf 'Readable: yes\n' || printf 'Readable: no\n'
    [[ -w "$target" ]] && printf 'Writable: yes\n' || printf 'Writable: no\n'
elif [[ -d "$target" ]]; then
    printf 'Directory: yes\n'
    [[ -r "$target" ]] && printf 'Readable: yes\n' || printf 'Readable: no\n'
    [[ -x "$target" ]] && printf 'Searchable: yes\n' || printf 'Searchable: no\n'
else
    printf 'Path not found or not a regular file/directory.\n' >&2
    exit 1
fi
