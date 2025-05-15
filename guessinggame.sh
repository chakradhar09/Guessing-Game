#!/usr/bin/env bash

# Function to check the user's guess
check_guess() {
    local guess=$1
    local actual=$2
    if [[ $guess -lt $actual ]]; then
        echo "Your guess is too low. Try again."
        return 1
    elif [[ $guess -gt $actual ]]; then
        echo "Your guess is too high. Try again."
        return 1
    else
        echo "Congratulations! You guessed the correct number of files: $actual"
        return 0
    fi
}

# Count the number of files in the current directory (excluding directories)
file_count=$(ls -l | grep ^- | wc -l)

# Welcome message
echo "Welcome to the Guessing Game!"
echo "How many files are in the current directory?"

# Loop until the correct guess
while true; do
    # Prompt for guess
    read -p "Enter your guess: " user_guess

    # Validate input is a number
    if [[ ! $user_guess =~ ^[0-9]+$ ]]; then
        echo "Please enter a valid number."
        continue
    fi

    # Check the guess
    check_guess $user_guess $file_count
    if [[ $? -eq 0 ]]; then
        break
    fi
done
