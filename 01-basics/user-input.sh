#!/usr/bin/env bash
# Ask for input and validate that it is not empty.

#printf "Enter Your Username : " 

#read username

#sudo useradd $username

#printf "Nice to meet you $username"




#!/bin/bash

#printf "Enter Your Username : "
#read username

#sudo useradd "$username"

#printf "Nice to meet you $username\n"

read -p "Enter a number: " number

if (( number % 2 == 0 )); then
    printf "Even number\n"
else
    printf "Odd number\n"
fi




read -p "enter your emp ID : " empId

if [[ $empId == "2947240" ]]; then
	printf "shubham shinde\n"
else
	printf "employee not found\n"
fi




