# Task 1 function
function task1() {
# Clear screen when function runs
	clear
	echo "Task1: List of even multiples"
# Retrieve input from user, if it is not a whole number, Error message will appear and user will 
# be prompted to input a valid number
	read -p "Input any number to find the even multiples: " Input
	until [[ "$Input" =~ ^[+-]?[0-9]+$ ]]; do
	echo "Error! Please enter a valid input"
	read Input			
	done
# This prompt will determine how many multiples of $Taskselected will be printed
# If the user inputs a number less than 0 (i.e. -1), an Error message will appear and the 
# user will be prompted to input a valid number
	read -p "How many even multiples do you want: " Numbers

	until [[ "$Numbers" =~ ^[0-9]+$ && "$Numbers" -gt 0 ]]
	do
		echo "Error! Please enter a valid integer"
		read Numbers
	done
	echo "You asked to find $Numbers even multiples for the number $Input"
	Counter=1
	Output=0
# While loop will continuously print output until $Number is reached
	while [ $Counter -le $Numbers ]; do
	Output=$(($Output + $Input))
	if (($Output % 2 == 0)); then
	echo $Output 
	((Counter++))
	fi
	done	
# This prompt will enable user to return to the main menu
	read -n 1 -r -s -p $'Press Any Key To Continue '
}

#Task 2
function task2() {
# Clear screen when function runs
	clear
	echo 'Task 2: List of terms of any linear sequence'
	read -p "Enter the first number : " a
}

function task3() {
	echo hi
}

function selectTask() {
	echo "
	Authors: Mustafa All-Said, Noor Ranya Said
	
	This program will allow users to perform simple mathematical operations. 
	Type in the appropriate key to perform the desired task

	Task 1: List even multiples of any number [Mm]
	Task 2: List terms of any linear sequence [Ss]
	Task 3: List nonnegative numbers in succession [Pp]
	"
	read -n 1 -r -s -p $'Choose a Task: ' Taskselected
	echo
	echo $Taskselected
	if [[ "$Taskselected" == [Mm]  ]]
	then
		task1
	elif [[ "$Taskselected" == [Ss]  ]]
	then
		task2
	elif [[ "$Taskselected" == [Pp]  ]]
	then
		task3
	else
		echo "please try again"
	fi
}

selectTask
