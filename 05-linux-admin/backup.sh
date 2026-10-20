#!/usr/bin/env bash
# Create a compressed archive from a directory you own.
# Usage: bash backup.sh SOURCE_DIRECTORY DESTINATION_DIRECTORY
# Practice with test data first. The destination directory must exist.

set -u

source_dir="${1:-}"
destination_dir="${2:-}"

if [[ -z "$source_dir" || -z "$destination_dir" ]]; then
    printf 'Usage: %s SOURCE_DIRECTORY DESTINATION_DIRECTORY\n' "$0" >&2
    exit 2
fi

if [[ ! -d "$source_dir" ]]; then
    printf 'Source is not a directory: %s\n' "$source_dir" >&2
    exit 1
fi

if [[ ! -d "$destination_dir" || ! -w "$destination_dir" ]]; then
    printf 'Destination must be an existing writable directory.\n' >&2
    exit 1
fi

archive="$destination_dir/backup-$(date +%Y%m%d-%H%M%S).tar.gz"
if tar -czf "$archive" -C "$(dirname "$source_dir")" "$(basename "$source_dir")"; then
    printf 'Backup created: %s\n' "$archive"
else
    printf 'Backup failed.\n' >&2
    exit 1
fi
