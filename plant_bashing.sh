#!/bin/bash

# Initialize variables
keep_playing=true
first_play=true
plant_age=0
plant_height=0
plant_leaves=0
plant_name="Morpheus"
user_name=""

# Function to get user's name on first play
get_user_name() {
    if [ "$first_play" == true ]; then
        read -p "Welcome! What's your name? " user_name
        echo "Hi $user_name! Get ready to plant your seed and watch it grow!"
    fi
}

# Function to ask if user wants to change plant name (second play onwards)
change_plant_name() {
    read -p "Do you want to change your plant's name? (y/n): " change_name
    if [[ "$change_name" =~ ^[Yy](es)?$ ]]; then
        read -p "What do you want to name your plant? " plant_name
    else
        plant_name="Morpheus"
        echo "Your plant's name remains $plant_name."
    fi
}

# Function to ask if user wants to name their plant during germination (first play)
name_plant() {
    read -p "Do you want to name your plant? (y/n): " name_choice
    if [[ "$name_choice" =~ ^[Yy](es)?$ ]]; then
        read -p "What do you want to name your plant? " plant_name
    else
        plant_name="Morpheus"
        echo "Your plant's name is $plant_name."
    fi
}

# Function to grow the plant
grow_plant() {
    ((plant_age++))
    if [ $plant_age -eq 1 ]; then
        echo "You planted a small seed the size of a grain of sand."
    elif [ $plant_age -eq 2 ]; then
        echo "Day 2: Nothing happened today."
    elif [ $plant_age -eq 3 ]; then
        echo "Day 3: Your seed germinated overnight!"
        if [ "$first_play" == true ]; then
            name_plant
        fi
    elif [ $plant_age -eq 6 ]; then
        plant_height=2
        plant_leaves=2
        echo "Day 6: Your plant has become a small sapling!"
        echo "Height: ${plant_height}cm | Leaves: ${plant_leaves}"
    elif [ $plant_age -gt 6 ] && [ $plant_age -le 21 ]; then
        plant_height=$((plant_height + 2))
        plant_leaves=$((plant_leaves + 2))
        echo "Day $plant_age: Your plant grows overnight."
        echo "Height: ${plant_height}cm | Leaves: ${plant_leaves}"
    fi

    if [ $plant_age -eq 21 ]; then
        echo "After growing 2 cm in height and 2 leaves once more, your plant sadly got lost to time"
        echo "Final height: 34cm | Final leaves: 34"
    fi
}

# Function to ask if user wants to wait a day or exit
ask_to_wait() {
    if [ $plant_age -lt 21 ]; then
        read -p "Do you want to wait for another day? (y/n): " wait_choice
        if [[ "$wait_choice" =~ ^[Yy](es)?$ ]]; then
            return 0  # Continue
        else
            echo "Goodbye then!"
            return 1  # Exit early
        fi
    fi
}

# Function to ask if user wants to play again
ask_to_play_again() {
    read -p "Do you want to play again? (y/n): " play_choice
    if [[ "$play_choice" =~ ^[Yy](es)?$ ]]; then
        keep_playing=true
    else
        keep_playing=false
        echo "Thank you for playing, $user_name! See you next time!
    "
    fi
}

# Main loop
while [ "$keep_playing" == true ]; do
    get_user_name

    # If it's a replay, ask to change plant name
    if [ "$first_play" == false ]; then
        change_plant_name
    fi

    # Reset plant stats
    plant_age=0
    plant_height=0
    plant_leaves=0

    echo "Let's begin your gardening journey, $user_name!"

    # Day-by-day loop
    while [ $plant_age -lt 21 ]; do
        grow_plant

        if [ $plant_age -eq 21 ]; then
            echo "The life cycle has come to an end."
            game_over=true
        fi

        ask_to_wait
        if [ $? -ne 0 ]; then
            game_over=true
            exit 0
        fi
    done

    first_play=false
    ask_to_play_again
done