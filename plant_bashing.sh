#!/bin/bash

echo "Welcome to this plant care simulator!"
echo "What is your name?"
read username 
echo "Hello $username"
sleep 1
echo "Do you want to plant a new seed? (y/n)"
read answer

if [[ $answer == "y" || $answer == "Y" ]]; then
	echo "You have dug a hole and planted a seed..."
	sleep 1
	echo "It is the size of a peanut."
	sleep 1
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
	sleep 1
	echo "The seed has been planted."

else 
	echo "Exiting the game..."
	sleep 1
	echo "Goodbye."
	exit 0
fi

echo "Do you want to wait another day for your seed to grow? (y/n)"
read grow

if [[ "$grow" == "y" || "$grow" == "Y" ]]; then
	echo "Waiting for Day 2..."
	sleep 1
	echo "Nothing happened"

else 
	echo "Exiting the game..."
	sleep 1
	echo "Goodbye."
	exit 0
fi

echo "Do you want to wait another day for your seed to grow? (y/n)"
read grow

if [[ "$grow" == "y" || "$grow" == "Y" ]]; then
	echo "Waiting for Day 3..."
	sleep 1
	echo "Wow the seed erminated over night!"

	else 
	echo "Exiting the game..."
	sleep 1
	echo "Goodbye."
	exit 0
fi


echo "Do you want to grow it for 1 more day or leave now? (y/n)"
read grow

if [[ "$grow" == "y" || "$grow" == "Y" ]]; then
	echo "Wating for Day 4..."
	sleep 1
	echo "Nothing happened"
	
else
	echo "Goodbye. Thanks for playing!"
	sleep 1
	exit 0
fi
	
echo "Do you want to grow it for 1 more day or leave now? (y/n)"
read grow

if [[ "$grow" == "y" || "$grow" == "Y" ]]; then
	echo "Wating for Day 5..."
	sleep 1
	echo "Nothing happened during the day, but something could happen later on."

else
	echo "Goodbye. Thanks for playing!"
	sleep 1
	exit 0
fi

echo "Do you want to grow it for 1 more day or leave now? (y/n)"
read grow
 
 if [[ "$grow" == "y" || "$grow" == "Y" ]]; then
	echo "Wating for Day 6..."
	sleep 1
	echo "It's morning time and the plant grew overnight into a sapling! It is now 2cm in height and has 2 leaves."	

else
	echo "Goodbye. Thanks for playing!"
	sleep 1
	exit 0
fi

echo "Do you want to grow it for 1 more day or leave now? (y/n)"
read grow

if [[ "$grow" == "y" || "$grow" == "Y" ]]; then
	echo "Wating for Day 7..."
	sleep 1
	echo "Wow! The seed grew overnight again and it is now 4cm in height and has 4 leaves."

else
	echo "Goodbye. Thanks for playing!"
	sleep 1
	exit 0
fi

echo "Do you want to grow it for 1 more day or leave now? (y/n)"
read grow

if [[ "$grow" == "y" || "$grow" == "Y" ]]; then
	echo "Wating for Day 8..."
	sleep 1
	echo "Hooray! The seed grew overnight again and it is now 6cm in height and has 6 leaves."

else
	echo "Goodbye. Thanks for playing!"
	sleep 1
	exit 0
fi

echo "Do you want to grow it for 1 more day or leave now? (y/n)"
read grow

if [[ "$grow" == "y" || "$grow" == "Y" ]]; then
	echo "Wating for Day 9..."
	sleep 1
	echo "Yipee! The seed grew overnight again and it is now 8cm in height and has 8 leaves."

else
	echo "Goodbye. Thanks for playing!"
	sleep 1
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
	sleep 1
	echo "Wowzers! The seed grew overnight again and it is now 12cm in height and has 12 leaves. It sure is getting lengthy."

else
	echo "Goodbye. Thanks for playing!"
	sleep 1
	exit 0
fi

echo "Do you want to grow it for 1 more day or leave now? (y/n)"
read grow

if [[ "$grow" == "y" || "$grow" == "Y" ]]; then
	echo "Wating for Day 12..."
	sleep 1
	echo "Golly! The seed grew overnight again and it is now 14cm in height and has 14 leaves. It just keeps growing."

else
	echo "Goodbye. Thanks for playing!"
	sleep 1
	exit 0
fi

echo "Do you want to grow it for 1 more day or leave now? (y/n)"
read grow

if [[ "$grow" == "y" || "$grow" == "Y" ]]; then
	echo "Wating for Day 13..."
	sleep 1
	echo "Goodness gracious! The seed grew overnight again and it is now 16cm in height and has 16 leaves. It sure is getting lengthy."

else
	echo "Goodbye. Thanks for playing!"
	sleep 1
	exit 0
fi

echo "Do you want to grow it for 1 more day or leave now? (y/n)"
read grow

if [[ "$grow" == "y" || "$grow" == "Y" ]]; then
	echo "Wating for Day 14..."
	sleep 1
	echo "Oh my days! The seed grew overnight again and it is now 18cm in height and has 18 leaves. It is certainly growing at an expeditious rate."

else
	echo "Goodbye. Thanks for playing!"
	sleep 1
	exit 0
fi

echo "Do you want to grow it for 1 more day or leave now? (y/n)"
read grow

if [[ "$grow" == "y" || "$grow" == "Y" ]]; then
	echo "Wating for Day 15..."
	sleep 1
	echo "My oh my! The seed grew overnight again and it is now 20cm in height and has 20 leaves. I wonder if it will keep growing."

else
	echo "Goodbye. Thanks for playing!"
	sleep 1
	exit 0
fi

echo "Do you want to grow it for 1 more day or leave now? (y/n)"
read grow

if [[ "$grow" == "y" || "$grow" == "Y" ]]; then
	echo "Wating for Day 16..."
	sleep 1
	echo "Boy oh boy! The seed grew overnight again and it is now 22cm in height and has 22 leaves. Will it ever stop growing?"

else
	echo "Goodbye. Thanks for playing!"
	sleep 1
	exit 0
fi

echo "Do you want to grow it for 1 more day or leave now? (y/n)"
read grow

if [[ "$grow" == "y" || "$grow" == "Y" ]]; then
	echo "Wating for Day 17..."
	sleep 1
	echo "You won't belive it! The seed grew overnight again and it is now 24cm in height and has 24 leaves. It just keeps growing."

else
	echo "Goodbye. Thanks for playing!"
	sleep 1
	exit 0
fi

echo "Do you want to grow it for 1 more day or leave now? (y/n)"
read grow

if [[ "$grow" == "y" || "$grow" == "Y" ]]; then
	echo "Wating for Day 18..."
	sleep 1
	echo "I can't belive it! The seed grew overnight again and it is now 26cm in height and has 26 leaves. This is bonkers!"

else
	echo "Goodbye. Thanks for playing!"
	sleep 1
	exit 0
fi

echo "Do you want to grow it for 1 more day or leave now? (y/n)"
read grow

if [[ "$grow" == "y" || "$grow" == "Y" ]]; then
	echo "Wating for Day 19..."
	sleep 1
	echo "Guess what! The seed grew overnight again and it is now 28cm in height and has 28 leaves. This is generational growth."

else
	echo "Goodbye. Thanks for playing!"
	sleep 1
	exit 0
fi

echo "Do you want to grow it for 1 more day or leave now? (y/n)"
read grow

if [[ "$grow" == "y" || "$grow" == "Y" ]]; then
	echo "Wating for Day 20..."
	sleep 1
	echo "Incredible! The seed grew overnight again and it is now 30cm in height and has 30 leaves. It sadly mgiht be omint to its end though."

else
	echo "Goodbye. Thanks for playing!"
	sleep 1
	exit 0
fi

echo "Do you want to grow it for 1 more day or leave now? (y/n)"
read grow

if [[ "$grow" == "y" || "$grow" == "Y" ]]; then
	echo "Wating for Day 21..."
	sleep 1
	echo "Amazing! The seed grew overnight again and it is now 32cm in height and has 32 leaves. I fear something bad wil happen though."

else
	echo "Goodbye. Thanks for playing!"
	sleep 1
	exit 0
fi

echo "Do you want to grow it for 1 more day or leave now? (y/n)"
read grow

if [[ "$grow" == "y" || "$grow" == "Y" ]]; then
	echo "Wating for the next morning"
	sleep 1
	echo "Oh no! The seed had grown overnight again and was 34 cm in heigh and had 34 leaves, but then it lost to time"
	sleep 1
	echo "This is now the end of the plant's life cycle. Thanks for playing!"
	exit 0
fi