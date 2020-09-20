#! /usr/bin/env bash 

function get_and_check_answer {
local correct_answer=$1

read guess

if [[ $guess -lt $correct_answer ]]
then 
	echo "guess higher"
	return 1
fi

if [[ $guess -gt $correct_answer ]]
then 
	echo "guess lower"
	return 1
fi

if [[ $guess -eq $correct_answer ]]
then 
	echo "good job!"
	return 0
fi
}


num_files=$(ls | wc -l)
good_guess=1

echo "Please guess the number of files in the current directory"

while [[ $good_guess -ne 0 ]]
do
	get_and_check_answer $num_files
	let good_guess=$?
done




