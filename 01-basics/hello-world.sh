#!/usr/bin/env bash
# First script: print basic information about this session.

printf 'Welcome to Shell Scripting!\n'
printf 'Current user: %s\n' "$(whoami)"
printf 'Current date: %s\n' "$(date)"
printf 'Current directory: %s\n' "$(pwd)"
