#!/usr/bin/env bash
# Functions package reusable steps.

greet() {
    local name="${1:-Learner}"
    printf 'Welcome, %s!\n' "$name"
}

path_type() {
    local path="${1:-}"
    if [[ -f "$path" ]]; then
        printf 'file\n'
    elif [[ -d "$path" ]]; then
        printf 'directory\n'
    else
        printf 'missing or unsupported path\n'
        return 1
    fi
}

greet "${1:-Shubham}"

# Pass a path as the second argument to check it.
if [[ -n "${2:-}" ]]; then
    path_type "$2"
fi
