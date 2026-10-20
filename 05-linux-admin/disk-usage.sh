#!/usr/bin/env bash
# Read-only overview of disk, memory and uptime.

printf '%s\n' '--- Disk space ---'
df -h

printf '\n%s\n' '--- Memory ---'
free -h

printf '\n%s\n' '--- Uptime ---'
uptime
