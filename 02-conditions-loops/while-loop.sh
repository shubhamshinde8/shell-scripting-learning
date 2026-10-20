#!/usr/bin/env bash
# Repeat a simple menu until the user chooses to quit.

while true; do
    printf '\n1) Say hello\n2) Show date\n0) Exit\n'
    read -r -p "Choose an option: " choice

    case "$choice" in
        1) printf 'Hello from Bash!\n' ;;
        2) date ;;
        0) printf 'Goodbye!\n'; break ;;
        *) printf 'Invalid option. Choose 1, 2, or 0.\n' >&2 ;;
    esac
done
