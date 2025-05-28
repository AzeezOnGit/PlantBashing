#!/bin/bash

# Declare our variables
play_again=true
first_play=true
keep_playing=true

# Variables for plant
plant_age=0
plant_height=0
plant_leaves=0
user_name=""

# Function to ask if user wants to play again
playAgain() {
	read -p "Do you want to play again? (y/n): " users_answer
	if [[ "$users_answer" == "y" || "$users_answer" == "yes" ]]; then
		keep_playing=true
	elif [[ "$users_answer" == "n" || "$users_answer" == "no" ]]; then
		keep_playing=false
	fi
}

# Function to grow plant
grow_plant() {
	((plant_age++))
	if [ $plant_age -eq 1 ]; then
		echo "You planted a new seed"
	elif [ $plant_age -eq 3 ]; then
		echo "Your seed germinated overnight!"
	elif [ $plant_age -eq 6 ]; then
		plant_height=2
		plant_leaves=2
		echo "Overnight, your plant has become a small sapling"
		echo "Height: $plant_height cm, Leaves: $plant_leaves"
	elif [ $plant_age -gt 6 ] && [ $plant_age -le 21 ]; then
		plant_height=$((plant_height + 2))
		plant_leaves=$((plant_leaves + 2))
		echo "Day $plant_age: Your plant grows overnight."
		echo "Height: $plant_height cm, Final Leaves: $plant_leaves"
	fi

	if [ $plant_age -eq 21 ]; then
		echo "Your plant has fully matured and has now passed away"
		echo "Final height: $plant_height cm, Final Leaves: $plant_leaves"
	fi
}

# Start main loop
while [[ "$keep_playing" == "true" ]]; do
	if [[ "$first_play" == "true" ]]; then
		read -p "Welcome! What's your name? " user_name
		first_play="false"
	fi

	read -p "Do you want to name your plant? (y/n): " name_choice
	if [[ "$name_choice" == "yes" ]]; then
		read -p "What do you want to name your plant? " plant_name
	else
		plant_name="Morpheus"
	fi

	plant_age=0
	plant_height=0
	plant_leaves=0

	echo "Let's begin our gardening journey, $user_name!"

	while [ $plant_age -lt 21 ] && [[ "$keep_playing" == "true" ]]; do
		grow_plant
		# Placeholder for show_status and ask_to_wait
		# show_status
		# ask_to_wait
		read -p "Press enter to continue to the next day..."
	done

	playAgain
done
