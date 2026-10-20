#!/usr/bin/env bash
# Analyze a log file supplied as an argument. This script does not modify it.
# Usage: bash log-monitor.sh sample.log

set -u

log_file="${1:-}"

if [[ -z "$log_file" || ! -f "$log_file" || ! -r "$log_file" ]]; then
    printf 'Usage: %s READABLE_LOG_FILE\n' "$0" >&2
    exit 2
fi

error_count="$(grep -ic 'ERROR' -- "$log_file" || true)"
warning_count="$(grep -ic 'WARN' -- "$log_file" || true)"

printf 'Log file: %s\n' "$log_file"
printf 'Lines containing ERROR: %s\n' "$error_count"
printf 'Lines containing WARN: %s\n' "$warning_count"
