#!/bin/bash

echo "Welcome to this plant care simulator"
echo "What is your name?"
read username 
echo "Hello $username"
sleep 3
echo "Do you want to plant a new seed? (y/n)"
read answer

if [[ "$answer == "y" || "$answer" == "Y" ]]; then
	echo "You have dug a whole and planted a small seed"
	echo -n "Medium size"
	read size
	echo "A $size seed is now planted. Good luck growing it!""
else 
	echo "Exiting the game..."
	sleep 3
	echo "Godbye."
	exit 0
fi