#!/bin/bash

echo "Welcome to this plant care simulator"
echo "What is your name?"
read username 
echo "Hello $username"
sleep 3
echo "Do you want to plant a new seed? (y/n)"
read answer

if [[ $answer == "y" || $answer == "Y" ]]; then
	echo "You have dug a hole and planted a seed..."
	sleep 2
	echo "It is medium size"
	sleep 2
	echo "A medium seed is now planted. Good luck growing it!"
	
else 
	echo "Exiting the game..."
	sleep 3
	echo "Goodbye."
	exit 0
fi