#!/usr/bin/env bash
# A for loop repeats an action for each item.

for service in ssh cron; do
    printf 'Practice item: %s\n' "$service"
done

# This example only prints names; it does not change service state.
