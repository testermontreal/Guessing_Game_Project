#!/usr/bin/env bash

echo "Welcome to Guessing game program!"
echo
echo "Let's play a guessing game!"
function estimate {
	echo "Please enter the number of files in the current directory:"
	read guess
    #read the total file number of the current direcitory
    fileNumber=$(ls -1 | wc -l)
}

estimate

while [[ $guess -ne $fileNumber ]]
do
	if [[ $guess -lt $fileNumber ]] 
	then
		echo "Too low. Try Again!"
	else
		echo "Too high.Try Again!"
	fi
	estimate
done

echo "Congratulation! Your guess is right!"
