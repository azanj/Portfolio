#!/bin/bash

#Ali Zanjani - 11/7/21 - Script to guess number with while loop. 

printError()
{

    echo -e "\033[31mERROR:\033[0m $1"
}


getNumber()
{

 
read -p "$1: "
     
    while (( $REPLY < $2 || $REPLY > $3 )); do
     
        printError "Input must be between $2 and $3"
     
        read -p "$1: "
     
    done

    while (( $REPLY != $4 )); do


       if [[ $REPLY -lt $2 || $REPLY -gt $3 ]]; then

        printError "Input must be between $2 and $3"
      fi

       if [[ $REPLY -lt $4 && $REPLY -gt $2 ]]; then

        echo "Too Low!"

       elif [[ $REPLY -gt $4 && $REPLY -lt $3 ]]; then

        echo "Too High!"

      fi

      read -p "$1: "

    done

    echo Correct!

}

getNumber "Guess a number between 1 and 100" 1 100 42