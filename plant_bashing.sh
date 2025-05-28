#!/bin/bash

keep_playing=true
first_play=true

# Plant variables
plant_age=0
plant_height=0
plant_leaves=0
plant_name="Morpheus"
user_name=""

# Function: Ask if user wants to play again
playAgain() {
    read -p "Do you want to play again? (y/n): " users_answer
    if [[ "$users_answer" =~ ^[Yy](es)?$ ]]; then
        keep_playing=true
    else
        keep_playing=false
        echo "Thanks for playing, $user_name! See you next time!"
    fi
}

# Function: Grow plant logic
grow_plant() {
    ((plant_age++))
    if [ $plant_age -eq 1 ]; then
        echo "You planted a small seed the size of a pebble."
    elif [ $plant_age -eq 3 ]; then
        echo "Your seed germinated overnight!"
        # Ask for plant name after germination
        if [[ "$first_play" == "true" ]]; then
            read -p "Do you want to name your plant? (y/n): " name_choice
            if [[ "$name_choice" =~ ^[Yy](es)?$ ]]; then
                read -p "What do you want to name your plant? " plant_name
            fi
        fi
    elif [ $plant_age -eq 6 ]; then
        plant_height=2
        plant_leaves=2
        echo "Overnight, your plant has become a small sapling!"
        echo "Height: $plant_height cm, Leaves: $plant_leaves"
    elif [ $plant_age -gt 6 ] && [ $plant_age -le 21 ]; then
        plant_height=$((plant_height + 2))
        plant_leaves=$((plant_leaves + 2))
        echo "Day $plant_age: Your plant grows overnight."
        echo "Height: $plant_height cm, Leaves: $plant_leaves"
    fi

    if [ $plant_age -eq 21 ]; then
        echo
        echo "🌿 The life cycle of your plant has come to an end."
        echo "Final height: 34 cm"
        echo "Final leaves: 34"
    fi
}

# Function: Ask if user wants to wait for the next day
ask_to_wait() {
    if [ $plant_age -lt 21 ]; then
        read -p "Do you want to wait for the next day? (y/n): " wait_choice
        if [[ ! "$wait_choice" =~ ^[Yy](es)?$ ]]; then
            echo "Your sapling is lost to time. Goodbye!"
            keep_playing=false
            exit 0
        fi
    fi
}

# Main game loop
while [[ "$keep_playing" == "true" ]]; do
    if [[ "$first_play" == "true" ]]; then
        echo
        read -p "Welcome! What's your name? " user_name
        echo "Let's begin our gardening journey, $user_name!"
        first_play="false"
    else
        read -p "Do you want to change your plant's name? (y/n): " change_name
        if [[ "$change_name" =~ ^[Yy](es)?$ ]]; then
            read -p "What do you want to name your plant? " plant_name
        fi
        echo
        echo "Alright $user_name, let's start a new gardening cycle with your plant named $plant_name!"
    fi

    # Reset plant stats
    plant_age=0
    plant_height=0
    plant_leaves=0

    while [ $plant_age -lt 21 ]; do
        grow_plant
        ask_to_wait
    done

    echo
    echo "🌿 Your plant's journey is complete. The life cycle has ended."
    echo "Final height: 34 cm"
    echo "Final leaves: 34"
    echo

    playAgain
done