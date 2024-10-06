#!/bin/bash

# Check if an argument is provided
if [ -z "$1" ]; then
    echo "Please provide a number."
    exit 1
fi

# Check if the input is a valid number
if ! [[ "$1" =~ ^-?[0-9]+$ ]]; then
    echo "Invalid input. Please provide a valid number."
    exit 1
fi

# Get the number from the argument
number=$1

# Check if the number is even or odd
if (( number % 2 == 0 )); then
    echo "Even"
else
    echo "Odd"
fi
