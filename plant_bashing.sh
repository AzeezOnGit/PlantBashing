#!/bin/bash

# Boolean variable to control the game loop
keep_playing=true
first_play=true
play_again=true

# User and plant variables
user_name=""
plant_name="Morpheus"
plant_age=0
plant_height=0
plant_leaves=0

# Function: Ask if the user wants to play again
play_again() {
    read -p "Do you want to play again? (y/n): " users_answer
    if [[ "$users_answer" =~ ^[Yy](es)?$ ]]; then
        keep_playing=true
    else
        keep_playing=false
        echo "Thank you for playing, $user_name! See you next time."
    fi
}

# Function: Ask if the user wants to wait another day
ask_to_wait() {
    read -p "Do you want to wait for your plant to grow? (y/n): " wait_answer
    if [[ "$wait_answer" =~ ^[Nn](o)?$ ]]; then
        echo "Goodbye, $user_name! Your plant's journey ends here."
        keep_playing=false
        return 1
    fi
    return 0
}

# Function: Grow the plant each day
grow_plant() {
    ((plant_age++))
    if [ $plant_age -eq 1 ]; then
        echo "Day 1: You planted a small seed the size of a speck of dust."
    elif [ $plant_age -eq 3 ]; then
        echo "Day 3: Your seed germinated overnight!"
    elif [ $plant_age -eq 6 ]; then
        plant_height=2
        plant_leaves=2
        echo "Day 6: Overnight, your plant has become a small sapling!"
        echo "Height: $plant_height cm, Leaves: $plant_leaves"
    elif [ $plant_age -gt 6 ] && [ $plant_age -le 21 ]; then
        plant_height=$((plant_height + 2))
        plant_leaves=$((plant_leaves + 2))
        echo "Day $plant_age: Your plant grows overnight."
        echo "Height: $plant_height cm, Leaves: $plant_leaves"
    fi

    if [ $plant_age -eq 21 ]; then
        plant_height=34
        plant_leaves=34
        echo "🌿 Your plant has reached the end of its life cycle!"
        echo "Final Height: $plant_height cm, Final Leaves: $plant_leaves"
        echo "Thank you for growing your plant with us, $user_name!"
    fi
}

# Function: Reset plant variables
reset_plant() {
    plant_age=0
    plant_height=0
    plant_leaves=0
}

# Main game loop
while [ "$keep_playing" = true ]; do
    if [ "$first_play" = true ]; then
        read -p "Welcome to the plant simulator! What's your name? " user_name
        first_play=false
    fi

    # Ask to name or change plant name
    if [ $plant_age -eq 0 ]; then
        if [ "$first_play" = false ]; then
            read -p "Would you like to change your plant's name? (y/n): " change_name
        else
            read -p "Would you like to name your plant? (y/n): " change_name
        fi

        if [[ "$change_name" =~ ^[Yy](es)?$ ]]; then
            read -p "Enter the name of your plant: " plant_name
        else
            plant_name="Morpheus"
        fi
    fi

    echo "Let's begin growing $plant_name, $user_name!"

    reset_plant

    while [ $plant_age -lt 21 ] && [ "$keep_playing" = true ]; do
        grow_plant
        if [ $plant_age -lt 21 ]; then
            ask_to_wait || break
        fi
    done

    # After 21 days, don't ask to continue to a new day. Just ask to play again.
    if [ $plant_age -eq 21 ]; then
        play_again
    fi
done