#!/usr/bin/env bash
# Read-only service status check. Usage: bash service-status.sh ssh
# Service names differ by Linux distribution and installed software.

set -u

service_name="${1:-}"

if [[ -z "$service_name" ]]; then
    printf 'Usage: %s SERVICE_NAME\n' "$0" >&2
    printf 'Example on Ubuntu: %s ssh\n' "$0" >&2
    exit 2
fi

if ! command -v systemctl >/dev/null 2>&1; then
    printf 'systemctl is not available in this environment.\n' >&2
    exit 3
fi

systemctl is-active "$service_name"
status=$?

printf 'systemctl exit status: %s\n' "$status"
exit "$status"
