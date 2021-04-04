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
# If input is less than 0 (i.e. -1), an Error code will ensue
read -p "How many even multiples do you want: " Numbers
until [[ "$Numbers" =~ ^[0-9]+$ && "$Numbers" -gt 0 ]]; do
if [[ "$Numbers" == [Qq] ]]; then
break
fi
echo
echo "Error Please Enter an Interger or Quit Task 1"
read Numbers
done
if [[ "$Numbers" == [Qq] ]]; then
continue
fi
# This prompt will verify the number and how many times it wants to multiply into input
# If $Counter is less than or equal to $Numbers, it will initiate a while loop
echo
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
# This command will run when task1 is complete and will prompt user to go back to main menu
read -n 1 -r -s -p $'Press Any Key To Continue '
;;
# This prompt will initiate task 2 by typing Ss key
[Ss])
while true; do
clear
echo 'Task 2: List of terms of any linear sequence'
echo
read -p "Enter the first number : " a
until [[ "$a" =~ ^[+-]?[0-9]+$ ]]; do
if [[ "$a" == [Qq] ]]; then 
break
fi
echo
echo "Error Please Input Number Again or Quit Task 2"
read a
done
if [[ "$a" == [Qq] ]]; then
continue
fi
echo
read -p "Enter the second number : " b
until [[ "$b" =~ ^[+-]?[0-9]+$ ]]; do
if [["$b" == [Qq] ]]; then
break
fi
echo
echo "Error Please Input Number Again or Quit Task 2"
read b
done
if [[ "$b" == [Qq] ]]; then
continue
fi
echo
read -p "How many terms: " terms
until [[ "$terms" =~ ^[+-]?[0-9]+$ ]]; do
if [[ "$terms" == [Qq] ]]; then
break
fi
echo
echo " Error Please Input A Positive Integer or Quit Task 2"
read terms
done 
if [[ "$Terms" == [Qq] ]]; then 
continue
fi
echo
echo "You are asked to find $Terms in linear squence for the numbers $a and $b"
echo
Counter=1
Term=0
Sum=0
while [ $Counter -le $Terms ]; do
Term=$((($a * $Counter) +$b))
Sum=$(($Sum + $Term))
((counter++))
echo $Term
done
echo "Sum = $Sum"
done
read -n 1 -r -s -p $'Press Any Key To Continue '
;;
esac
done
