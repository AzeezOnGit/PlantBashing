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
echo "Do you want to wait 3 days for your seed to grow? (y/n)"
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
	if [[ condition ]]; then
		#statements
	elif [[ condition ]]; then
		#statements
	else
		#statements
	fi
else 
	echo "Exiting the game..."
	sleep 2
	echo "Goodbye."
	exit 0
fi
	echo "Do you want to grow it for 1 more day or leave now? (y/n)"
	read answer
	if [[ "$grow" == "n" || "$grow" == "N" ]]; then
	echo "Goodbye. Thanks for playing!"
	sleep 2
	exit 0
	
	if [[ "$grow" == "y" || "$grow" == "Y" ]]; then
	echo "Day 4: Wating for Day 4..."
	sleep 2
	echo "Nothing happened"




day = 7
leaves = 0
height = 0
	ask user if wait
	if yes then
		day ++ (8)
		leaves += 2
		height += 2
		echo $day $leaves $height
		ask user if wait
		if yes then
			$day++
			$leaves+= 2
			$height+= 2
			echo $day $leaves $height
			ask user if wait
				if yes then
					day ++ (10)
					leaves += 2
					height += 2
					echo day leaves height
					ask user if wait
				else
					echo thanks for playing...
					wait 1
					exit
			else
			echo thanks for playing...
			wait 1
			exit
	else
		echo thanks for playing...
		wait 1
		exit


if THIS then
	do this
else 
	do this
if