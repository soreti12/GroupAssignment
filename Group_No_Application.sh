# Task 1 function
function task1() {
# Clear screen when function runs
	clear
	echo "Task1: List of even multiples"
# Retrieve input from user, if it is not a whole number, Error message will appear and user will be prompted to input a valid number
	read -p "Input any number to find the even multiples: " Input
	until [[ "$Input" =~ ^[+-]?[0-9]+$ ]]; do
# The line below will be available throughout program so that user can quit at any time
		if [[ "$Input" == [Qq] ]]; then
		selectTask
		fi
# If user input is NOT a whole number, an Error message will appear and user will be prompted to input a valid number
		echo "Error! Please enter a valid input"
		read Input			
	done
# This prompt will determine how many multiples of $Taskselected will be printed
# If the user inputs a number less than 0 (i.e. -1), an Error message will appear and the user will be prompted to input a valid number
	read -p "How many even multiples do you want: " Numbers
	until [[ "$Numbers" =~ ^[0-9]+$ && "$Numbers" -gt 0 ]]; do
		if [[ "$Numbers" == [Qq] ]]; then
		selectTask
		fi
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
	read -p "Hit the [ENTER] key to return to the main menu"
	selectTask
}

#Task 2
function task2() {
# Clear screen when function runs
	clear
	read -p "Enter an integer for variables a & b: " a b
	read -p "Enter the numbers of terms:" n
	counter=1
	sum=0
	echo "The terms of the series are:"
	while [ $counter -le $n ]; do

	temp=expr $a * $counter + $b
	echo $temp
	sum=expr $sum + $temp
	counter=expr $counter + 1

	done
	echo "The sum is $sum"
	read -p "Hit the [ENTER] key to return to the main menu"
		selectTask
}

function task3() {
	clear
	echo "Task 3: Print the product of two nonnegative integers in succession"
	# Retrieve input from user
	read -p "Please enter a number: " Input
	until [[ "$Input" =~ ^[+-]?[0-9]+$ ]]; do
		if [[ "$Input" == [Qq] ]]; then
		selectTask
		fi
		read -p "Please enter a number" Input
	done
	echo "You entered $Input"
	# $OUTPUT count start at 0 and will increase by 1 each time condition is met
	OUTPUT=0
	# for loop will display value $i until $Input is reached
	for (( i=1; i<=$Input; i++ ))
	do
	# Nested for loop will go through entire iteration before outer loop
	# can run again
		for (( j=1; j<=i; j++ ))
		do
				if [ `expr $i % $j` -eq 0 ]
				then
						if [ `expr $i / $j` -eq `expr $j + 1` ]
						then
							echo $i
							OUTPUT=`expr $OUTPUT + 1`
						fi
				fi
		done
done
	# Dislays total number of outputs
	echo "Total number of output: $OUTPUT"
	read -p "Hit the [ENTER] key to return to the main menu"
	selectTask
}

function selectTask() {
	echo "
	Authors: Mustafa All-Said, Noor Ranya Said
	
	This program will allow users to perform simple mathematical operations. 
	Type in the appropriate key to perform the desired task

	Task 1: List even multiples of any number [Mm]
	Task 2: List terms of any linear sequence [Ss]
	Task 3: List nonnegative numbers in succession [Pp]
	
	To exit at any time during the program, hit [Qq] to return to the main menu
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
