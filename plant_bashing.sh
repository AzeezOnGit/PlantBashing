#!/bin/bash

echo "Welcome to this plant care simulator"
echo "What is your name?"
read username 
echo "Hello $username"
sleep 2
echo "Do you want to plant a new seed? (y/n)"
read answer

if [[ $answer == "y" || $answer == "Y" ]]; then
	echo "You have dug a hole and planted a seed..."
	sleep 2
	echo "It is the size of a peanut"
	sleep 2
	echo "The seed has now been planted. Good luck growing it!"
	
else 
	echo "Exiting the game..."
	sleep 2
	echo "Goodbye."
	exit 0
fi
sleep 2
echo "In this digital world, time moves much faster than it does outside reality. Mere minutes or seconds of your time can be hours, days, or months in this place"
sleep 2
echo "Do you want to wait for your seed to grow? (y/n)"
read grow

if [[ "$grow" == "y" || "$grow" == "Y" ]]; then
	echo "Waiting one day for seed to grow..."
	sleep 2
	echo "Day 1: The seed was planted"

	echo "Waiting for Day 2..."
	sleep 2
	echo "Nothing happened"

	echo "Waiting for Day 3..."
	sleep 2
	echo "The seed germinated overnight"
else 
	echo "Exiting the game..."
	sleep 2
	echo "Goodbye."
	exit 0
fi
	echo ""
	echo "Do you want to wait 1 more day or leave now? (y/n)"
	read answer
	if [[ "$answer" == "n" || $answer == "N" ]]; then
		echo "Goodbye. Thanks for playing!"
		sleep 2
		exit 0
	
	elif [[ "$answer" == "y" || $answer == "Y" ]]; then
	echo "Day 4: Nothing happened. The plant is resting"
	sleep 2

	if [[ $current_day -eq 5 ]]; then
		echo "Day 5: The plant grew 2cm in heigh and 2 leaves"
	elif [[ $current_day -eq 6 ]]; then
		echo "Day 6: The plant grew another 2cm in heigh and 2 leaves. It is now 4cm in heigh and has 4 leaves"