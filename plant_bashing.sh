#!/bin/bash

# Plant Bashing Game - Bash Script Simulator

# Variables
playGame=true
firstTime=true
userName=""
plantName="Morpheus"

# Function to pause and simulate time
pause() {
    echo ""
    echo "..."
    sleep 2
    echo ""
}

# Start the game loop
while [ "$playGame" == true ]; do

    # Collect user's name only on the first play
    if [ "$firstTime" == true ]; then
        echo "🌿 Welcome to the Plant Bashing Garden! 🌿"
        read -p "Before we begin, what's your name? " userName
        echo "Nice to meet you, $userName! Let's grow something amazing together!"
        firstTime=false
    else
        echo ""
        echo "🌿 Welcome back to the Plant Bashing Garden, $userName! 🌿"
    fi

    # Check if user wants to change plant name (not on first play)
    if [ "$firstTime" == false ]; then
        read -p "Would you like to change your plant's name? (Yes/No) " changePlant
        case $changePlant in
            [Yy]* )
                read -p "What would you like to name your plant? " plantName
                echo "Your plant will now be called $plantName!"
                ;;
            * )
                echo "We'll stick with $plantName then!"
                ;;
        esac
    fi

    # Ask if user wants to plant a new seed
    read -p "Would you like to plant a new seed? (Yes/No) " plantChoice
    case $plantChoice in
        [Yy]* )
            echo "You dig a hole and plant a small seed the size of a pebble."
            ;;
        * )
            echo "Alright, maybe next time. Goodbye, $userName!"
            playGame=false
            break
            ;;
    esac

    # Time simulation intro
    echo "In the digital world of this computer, time moves much faster than in your reality."
    echo "Minutes or seconds for you can be days, weeks, or months here!"
    pause

    # Plant growth stages
    totalDays=1
    height=0
    leaves=0

    # Initial plant naming for first playthrough
    if [ "$firstTime" == true ]; then
        read -p "Would you like to name your plant? (Yes/No) " nameChoice
        case $nameChoice in
            [Yy]* )
                read -p "What would you like to name your plant? " plantName
                echo "Your plant will be called $plantName!"
                ;;
            * )
                echo "We'll go with $plantName then!"
                ;;
        esac
    fi

    echo "Day 1 - You planted $plantName."
    pause

    # Day 2
    echo "Day 2 - Nothing happened."
    ((totalDays++))
    pause

    # Day 3 - Germination
    echo "Day 3 - $plantName germinated overnight!"
    ((totalDays++))
    pause

    # Ask user to wait or leave
    while [ $totalDays -lt 21 ]; do
        read -p "Would you like to wait another day to see $plantName grow, or leave? (Wait/Leave) " choice
        case $choice in
            [Ww]* )
                ((totalDays++))
                # Growth logic: After Day 6, plant grows 2cm and 2 leaves each day
                if [ $totalDays -eq 6 ]; then
                    echo "Day 6 - $plantName grew overnight into a sapling!"
                elif [ $totalDays -gt 6 ]; then
                    height=$(( (totalDays - 6) * 2 ))
                    leaves=$(( (totalDays - 6) * 2 ))
                    echo "Day $totalDays - $plantName is now $height cm tall and has $leaves leaves!"
                else
                    echo "Day $totalDays - Nothing happened."
                fi
                ;;
            [Ll]* )
                echo "Your sapling, $plantName, is lost to time. Goodbye, $userName!"
                pause
                break
                ;;
            * )
                echo "Please answer with Wait or Leave."
                ;;
        esac

        # Check if totalDays reached 21
        if [ $totalDays -ge 21 ]; then
            echo ""
            echo "🌿 $plantName has fully matured! 🌿"
            echo "Total Age: 21 days"
            echo "Final Height: 34cm"
            echo "Leaf Total: 34"
            pause
            break
        fi
    done

    # Ask if user wants to play again
    read -p "Would you like to play again and grow a new plant? (Yes/No) " playAgain
    case $playAgain in
        [Yy]* )
            echo "Alright! Let's start over!"
            ;;
        * )
            echo "Thanks for playing, $userName! See you next time!"
            playGame=false
            ;;
    esac

done

echo "Goodbye, $userName! 🌸"