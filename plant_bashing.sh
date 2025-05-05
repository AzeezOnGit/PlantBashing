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
echo "In this digital world, time moves much faster than it does outside reality, and that mere minutes or seconds of your time can be hours, days, or months in this place"
echo "Do you want to wait for your seed to grow? (y/n)"
if [[ $answer == "y" || $answer == "Y" ]]; then
	wait 1 day
else 
	echo "Exiting the game..."
	sleep 2
	echo "Goodbye."
	exit 0
fi