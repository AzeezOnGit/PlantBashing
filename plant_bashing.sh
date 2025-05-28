#!/bin/bash

#declair our variables
play_again=true
first_play=true
keep_playing=true

#Variables for plant
plant_age=0
plant_height=0
plant_leaves=0
user_name=""

while [[ "$keep_playing" == "true" ]]; do
	if [[ "$first_play" == "true" ]]; then
		read -p "Welcome! What's your name? " users_name
		first_play="false"
	fi
	read -p "Do you want to name your plant? (y/n): " name_choice
	if [[ "$name_choice" == "yes" ]]; then
		read -p "What do you want to name your plant? " plant_name
	else
		plant_name="Morpheus"
	fi

playAgain() {
	read -p "Do you want to play again? (y/n): " users_answer
	if [[ $users_answer == "y" || $users_answer == "yes" ]]; then
		keep_playing=true
	elif [[ $users_answer == "n" || $users_answer == "no" ]]; then
		keep_playing=false
	fi
	return $keep_playing
}

# Function to grow plant
grow_plant() {
	((plant_age++))
	if [ $plant_age -eq 1 ]; then
		echo "You planted a new seed"
	elif [ $plant_age -eq 3 ]; then
		echo "Your seed germinated overnight!"
	elif [ plant_age -eq 6 ]; then
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

	if [ $plant_age -eq 21 ];then
		echo " Your plant has fully mature and how now passed away"
		echo "Final height: $plant_height cm, Final Leaves: plant_leaves"
	fi
}
#Need functions for:
#asking if the user wants to wait...
#growing the plant: making changes to your plant variables (age, hieght, leaves...etc..)
#get the weather
#pring our the current plant/day satus.
#maybe others... 

#Then we run our "_main_" loop/program

while $keep_playing; do
	get_user_name
	get_plant_name
	plant_age=0
	plant_height=0
	plant_leaves=0

	echo "Let's begin our gardening journey, $user_name!"

	while [ $plant_age -lt 21 ] && $keep_playing; do
		grow_plant
		show_status
		if [ $plant_age -lt 21 ]; then 
			ask_to_wait
		fi
	done

	#how do we start the game?
	#Get the player name
	#ask if player wants to plant a seed
	#ask if they want to wait for that seed
	#grow or dont grow the seed
	#name or dont name the plant
	#keep growing or leave the game...
	#the plant evenutally dies/game finishes...
	#this is the last functioncall in your loop.
	playAgain
	playAgain
	playAgain
	
	done