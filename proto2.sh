function task1() {
	clear
	echo "Task1: List of even multiples"
	read -p "Input any number to find the even multiples: " Input
	until [[ "$Input" =~ ^[+-]?[0-9]+$ ]]; do
	echo "Error! Please enter a valid input"
	read Input			
	done
	read -p "How many even multiples do you want: " Numbers

	until [[ "$Numbers" =~ ^[0-9]+$ && "$Numbers" -gt 0 ]]
	do
		echo "Error! Please enter a valid integer"
		read Numbers
	done
	echo "You asked to find $Numbers even multiples for the number $Input"
	Counter=1
	Output=0
	while [ $Counter -le $Numbers ]; do
	Output=$(($Output + $Input))
	if (($Output % 2 == 0)); then
	echo $Output 
	((Counter++))
	fi
	done	
	read -n 1 -r -s -p $'Press Any Key To Continue '
}

function task2() {
	clear
	echo 'Task 2: List of terms of any linear sequence'
	read -p "Enter the first number : " a
}

function task3() {
	echo hi
}

function selectTask() {
	read -n 1 -r -s -p $'Choose a Task: ' Taskselected
	echo
	echo $Taskselected
	if [[ "$Taskselected" == [Mm]  ]]
	then
		task1
	elif [[ "$Taskselected" == [Ss]  ]]

	then
		task2
	else [[ "$Taskselected" == [Pp]  ]]
		task3
	fi
}

selectTask
