# Initial menu includes greeting and brief explanation of program
while true; do 

echo "Welcome To Group 16 Project 

This App is programmed by: 

Mustafa All-Said

Noor Ranya Said

Here you will find three tasks

Task 1 List of even multiples of any number [Mm]
Task 2 List of terms of any linear sequence[Ss]
Task 3 List of two non negative numbers in succession [Pp]
Quit application [Qq]"

read -n 1 -r -s -p $'Choose a Task: ' Taskselected

# Switch statement will determine output based on user input $Taskselected
case $Taskselected in
# This prompt will initiate task1 by typing Mm key
[Mm])
clear
echo "Task 1: list of even multiples"
# User will input random number, task will output all of its even multiples
read -p "Input any number to find the even multiples: "  Input
until [[ "$Input" =~ ^[+-]?[0-9]+$ ]]; do
# The line below will be available throughout program so that user can quit at any time
if [[ "$Input" == [Qq] ]]; then
break
fi
# If user input is NOT a whole number, an Error message will appear and user will be prompted to input a valid number
echo "Error Please Input Number Again or Quit Task 1"
read Input
done
if [[ "$Input" == [Qq] ]]; then
continue
fi
# This prompt will determine how many multiples of $Taskselected will be printed
# If input is less than 0 (i.e. -1), an Error message will appear and user will be prompted to enter a valid input
read -p "How many even multiples do you want: " Numbers
until [[ "$Numbers" =~ ^[0-9]+$ && "$Numbers" -gt 0 ]]; do
if [[ "$Numbers" == [Qq] ]]; then
break
fi
echo "Error Please Enter an Interger or Quit Task 1"
read Numbers
done
if [[ "$Numbers" == [Qq] ]]; then
continue
fi
# This prompt will verify the number and how many times it wants to multiply into input
# If $Counter is less than or equal to $Numbers, it will initiate a while loop
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
# This command will run when task1 is complete and will prompt user to go back to main menu
read -n 1 -r -s -p $'Press Any Key To Continue '
;;
# This prompt will initiate task 2 by typing Ss key
[Ss])
while true; do
clear
echo 'Task 2: List of terms of any linear sequence'
# User will input a random number and program will return appropriate output
# If number is not within appropriate range (i.e. -2), Error message will show and user will
# be prompted to input a valid number
read -p "Enter the first number : " a
until [[ "$a" =~ ^[+-]?[0-9]+$ ]]; do
if [[ "$a" == [Qq] ]]; then 
break
fi
echo "Error Please Input Number Again or Quit Task 2"
read a
done
if [[ "$a" == [Qq] ]]; then
continue
fi
# User will input another number so that task can be run within the same range. If not, an Error
# message will show and user will be prompted to input another valid number
read -p "Enter the second number : " b
until [[ "$b" =~ ^[+-]?[0-9]+$ ]]; do
if [["$b" == [Qq] ]]; then
break
fi
echo "Error Please Input Number Again or Quit Task 2"
read b
done
if [[ "$b" == [Qq] ]]; then
continue
fi
# User will input number of term they want the program to output. If user input is NOT a whole
# number, an Error message will show and user will be prompted to input a valid number
read -p "How many terms: " terms
until [[ "$terms" =~ ^[+-]?[0-9]+$ ]]; do
if [[ "$terms" == [Qq] ]]; then
break
fi
echo " Error Please Input A Positive Integer or Quit Task 2"
read terms
done 
if [[ "$Terms" == [Qq] ]]; then 
continue
fi
echo "You are asked to find $Terms in linear squence for the numbers $a and $b"
Counter=1
Term=0
Sum=0
# while loop will output $term many numbers 
while [ $Counter -le $Terms ]; do
Term=$((($a * $Counter) +$b))
Sum=$(($Sum + $Term))
((counter++))
echo $Term
done
echo "Sum = $Sum"
done
# This command will run when task1 is complete and will prompt user to go back to main menu
read -n 1 -r -s -p $'Press Any Key To Continue '
;;
esac
done



[Pp])
clear
echo "Task 3: XXXX"
# GET INPUT FROM USER
read -p "Please enter a number: " Input
until [[ "$Input" =~ ^[+-]?[0-9]+$ ]]; do
echo "Error! Please enter a valid input"
read $Input
done
echo "You entered $INPUT"

OUTPUT=0

for (( i=1; i<=$Input; i++ ))
do
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

echo "Total output: $OUTPUT"
;;
done 
