#!/usr/bin/env bash
# Variables store values for reuse.

first_name="Shubham"
topic="Bash scripting"

printf 'Hello, %s!\n' "$first_name"
printf 'Today we are learning %s.\n' "$topic"

# Command substitution stores the output of a command.
today="$(date +%F)"
printf 'Date: %s\n' "$today"

# Quote variables to preserve spaces and avoid word splitting.

# Storing employees Data

Name="Yashwant Bhole"
EmpID="2946770"
Location="Latur"

Name="Sujata Dandnaik"
EmpID="2948416"
Location="Latur"

Name="Vaishnavi Bhosale"
EMPID="2947228"
Location="Satara"


printf 'Employee Name: %s\n' "$Name"
printf 'Employee ID : %s\n' "$EmpID"
printf 'Employee Location : %s\n' "$Location"











