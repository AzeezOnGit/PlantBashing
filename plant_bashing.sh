#!/bin/bash

echo "Welcome to this plant care simulator!"
echo "What is your name?"
read username 
echo "Hello $username"
sleep 2
echo "Do you want to plant a new seed? (y/n)"
read answer

if [[ $answer == "y" || $answer == "Y" ]]; then
	echo "You have dug a hole and planted a seed..."
	sleep 2
	echo "It is the size of a peanut."
	sleep 2
	echo "The seed has now been planted. Good luck growing it!"
	
else 
	echo "Exiting the game..."
	sleep 1
	echo "Goodbye."
	exit 0
fi
sleep 1
echo "In this digital world, time moves much faster than it does outside reality. Mere minutes or seconds of your time can be hours, days, or even months in this place."
sleep 1
echo "Do you want to wait 1 day for your seed to grow? (y/n)"
read grow

if [[ "$grow" == "y" || "$grow" == "Y" ]]; then
	echo "Waiting one day for seed to grow..."
	sleep 2
	echo "The seed has been planted."

else 
	echo "Exiting the game..."
	sleep 2
	echo "Goodbye."
	exit 0
fi

echo "Do you want to wait another day for your seed to grow? (y/n)"
read grow

if [[ "$grow" == "y" || "$grow" == "Y" ]]; then
	echo "Waiting for Day 2..."
	sleep 2
	echo "Nothing happened"

else 
	echo "Exiting the game..."
	sleep 2
	echo "Goodbye."
	exit 0
fi

echo "Do you want to wait another day for your seed to grow? (y/n)"
read grow

if [[ "$grow" == "y" || "$grow" == "Y" ]]; then
	echo "Waiting for Day 3..."
	sleep 2
	echo "Wow the seed erminated over night!"

	else 
	echo "Exiting the game..."
	sleep 2
	echo "Goodbye."
	exit 0
fi


echo "Do you want to grow it for 1 more day or leave now? (y/n)"
read grow

if [[ "$grow" == "y" || "$grow" == "Y" ]]; then
	echo "Wating for Day 4..."
	sleep 2
	echo "Nothing happened"
	
else
	echo "Goodbye. Thanks for playing!"
	sleep 2
	exit 0
fi
	
echo "Do you want to grow it for 1 more day or leave now? (y/n)"
read grow

if [[ "$grow" == "y" || "$grow" == "Y" ]]; then
	echo "Wating for Day 5..."
	sleep 2
	echo "Nothing happened during the day, but something could happen later on."

else
	echo "Goodbye. Thanks for playing!"
	sleep 2
	exit 0
fi

echo "Do you want to grow it for 1 more day or leave now? (y/n)"
read grow
 
 if [[ "$grow" == "y" || "$grow" == "Y" ]]; then
	echo "Wating for Day 6..."
	sleep 2
	echo "It's morning time and the plant grew overnight into a sapling! It is now 2cm in height and has 2 leaves."	

else
	echo "Goodbye. Thanks for playing!"
	sleep 2
	exit 0
fi

echo "Do you want to grow it for 1 more day or leave now? (y/n)"
read grow

if [[ "$grow" == "y" || "$grow" == "Y" ]]; then
	echo "Wating for Day 7..."
	sleep 2
	echo "Wow! The seed grew overnight again and it is now 4cm in height and has 4 leaves."

else
	echo "Goodbye. Thanks for playing!"
	sleep 2
	exit 0
fi

echo "Do you want to grow it for 1 more day or leave now? (y/n)"
read grow

if [[ "$grow" == "y" || "$grow" == "Y" ]]; then
	echo "Wating for Day 8..."
	sleep 2
	echo "Hooray! The seed grew overnight again and it is now 6cm in height and has 6 leaves."

else
	echo "Goodbye. Thanks for playing!"
	sleep 2
	exit 0
fi

echo "Do you want to grow it for 1 more day or leave now? (y/n)"
read grow

if [[ "$grow" == "y" || "$grow" == "Y" ]]; then
	echo "Wating for Day 9..."
	sleep 2
	echo "Yipee! The seed grew overnight again and it is now 8cm in height and has 8 leaves."

else
	echo "Goodbye. Thanks for playing!"
	sleep 2
	exit 0
fi

echo "Do you want to grow it for 1 more day or leave now? (y/n)"
read grow

if [[ "$grow" == "y" || "$grow" == "Y" ]]; then
	echo "Wating for Day 10..."
	sleep 1
	echo "OMG! The seed grew overnight again and it is now 10cm in height and has 10 leaves."

else
	echo "Goodbye. Thanks for playing!"
	sleep 1
	exit 0
fi

echo "Do you want to grow it for 1 more day or leave now? (y/n)"
read grow

if [[ "$grow" == "y" || "$grow" == "Y" ]]; then
	echo "Wating for Day 11..."
	sleep 2
	echo "Wowzers! The seed grew overnight again and it is now 12cm in height and has 12 leaves. It sure is getting lengthy."

else
	echo "Goodbye. Thanks for playing!"
	sleep 2
	exit 0
fi