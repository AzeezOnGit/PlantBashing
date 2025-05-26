#!/bin/bash

# Initialize variables
playing=true
first_play=true
plant_name="Morpheus"
player_name=""

while $playing; do
    if $first_play; then
        echo "Welcome to the Plant Care Simulator!"
        echo "What is your name?"
        read player_name
        echo "Hello $player_name!"
        first_play=false
    else
        echo "Welcome back, $player_name!"
        echo "Do you want to change your plant's name? (y/n)"
        read change_name
        if [[ $change_name == "y" || $change_name == "Y" ]]; then
            echo "What do you want to name your plant?"
            read plant_name
        else
            echo "Keeping the plant name as '$plant_name'."
        fi
    fi

    echo "Do you want to plant a new seed? (y/n)"
    read answer
    if [[ $answer != "y" && $answer != "Y" ]]; then
        echo "Goodbye, $player_name. Thanks for playing!"
        playing=false
        break
    fi

    echo "You have dug a hole and planted a seed named '$plant_name'..."
    sleep 1
    echo "It is the size of a peanut."
    sleep 1

    day=1
    height=2
    leaves=2
    germinated=false

    while true; do
        echo "Do you want to wait for Day $day and see if '$plant_name' grows? (y/n)"
        read grow
        if [[ $grow != "y" && $grow != "Y" ]]; then
            echo "Goodbye, $player_name. Thanks for playing!"
            playing=false
            break 2
        fi

        echo "Waiting for Day $day..."
        sleep 1

        if [[ $day -eq 3 && $germinated == false ]]; then
            echo "Wow! '$plant_name' germinated overnight!"
            germinated=true
        elif [[ $day -eq 21 ]]; then
            echo "Oh no! '$plant_name' grew overnight to 34cm with 34 leaves, but it has now reached the end of its lifecycle."
            echo "Thanks for playing!"
            sleep 1
            echo "Would you like to play again? (y/n)"
            read play_again
            if [[ $play_again != "y" && $play_again != "Y" ]]; then
                echo "Goodbye, $player_name. Thanks for playing!"
                playing=false
                break 2
            else
                echo "Restarting the game..."
                sleep 1
                break
            fi
        else
            echo "'$plant_name' grew overnight! It is now ${height}cm tall and has ${leaves} leaves."
            height=$((height + 2))
            leaves=$((leaves + 2))
        fi

        day=$((day + 1))
    done
done