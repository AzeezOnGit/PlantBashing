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
	echo "Do you want to wait 1 more day or leave now? (wait/leave)"
	if [["$choice" == "leave" ]]; then
		echo "Goodbye. THanks for playing!"
		sleep 2
		exit 0
	fi
	echo "Waiting for Day 4..."
	sleep 2
	echo "Day 4: Nothing happened. The plant is resting"

	while [[$current day -lt $max_days ]]; do
		echo ""
		echo "DO you want to continue watching the plant grow? (y/n)"
		read next

	if [[ "$next" != "y" && "$next" != "Y" ]]; then
		echo "Thank you for growing your plant with care."
		sleep 2
		exit 0
	fi

	current_day=$((current_day + 1))
	height=$((height + 2))
	leaves=((leaves + 2))

	echo "Day $current_day: The plant grew 2 cm and gained 2 leaves."
	echo "The plant is now ${height}cm tall with ${leaves} leaves."
	show_status
	sleep 2
done

echo ""
echo "Your plant has completed its life cycle!"
echo "Total lifespan of your plant:"
echo "Total age: 21 days"
echo "Final height: 34 cm"
echo "Leaf total: 34"
sleep 2
echo "Thanks for playing"
sleep 2
exit 0

