#!/usr/bin/env bash
#File: guessinggame.sh

function guessinggame{

files=$(ls -R | wc -l)

guessings=0

while [[ guessing -eq 0 ]]
do

            echo "Hey, dear user, enter the number of files that exists in current directorium: "
            read guess
            
            if [[ $guess =~ ^[0-9]+$ ]]
                        then
                             if [[ $guess -eq $files ]]
                             then
                                    echo "Yes!You have entered the correct number of files"
                                    guess=1
                             elif [[ $guess -gt $files ]]
                                    then
                                    echo "The number of files you'have entered is $guess . That number of files is too big."
                                    echo ""
                              else
                              
                                    echo "The number of files you have entered is $guess . That number of files is too small."
                                    echo ""
                              fi
                              
                              
                          else
                          
                                    echo "Make sure you've entered that describes how many files exists in current directorium. "
                          fi
                          
              done
              
              
