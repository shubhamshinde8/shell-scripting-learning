#!/usr/bin/env bash
# A for loop repeats an action for each item.

for service in ssh cron; do
    printf 'Practice item: %s\n' "$service"
done


for i in shubham; do
	printf " $i " 
done

# This example only prints names; it does not change service state.

#!/bin/bash

for i in {1..5}
do
    echo "Number is $i"
done



#!/bin/bash

for i in {1..10}
do
    echo "7 x $i = $((7 * i))"
done

