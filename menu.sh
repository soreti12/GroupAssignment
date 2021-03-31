#! /usr/bin/bash

#Group project 16 applied programming

#This interface allows the user to perform mathmatical operations

#Task 1:   Find the even multiples of any number – the user should specify the multiples of which
#          number they want to print and how many of them.

#Task 2:   Find the terms of any linear sequence given by the rule Un = an + b, where a and b are
#          integers specified by the user and n is a positive integer, and print them in increasing order
#          The user also will specify how many terms the program should print. The user should be
#          allowed to choose another sequence and for the number of terms chosen the program should
#          calculate and print their sum.


#Task 3:   Find the numbers that can be expressed as the product of two nonnegative integers in
#          succession and print  them in increasing order.
#          The user should specify a maximum value and the program should print all said numbers smaller than or equal to
#          that value. The program should keep a count of how many numbers were printed and should
#          output that count, as well as the numbers.
#          Your application should be user friendly. 



#This is the menu where you can choose which task you would like to execute

while true; do 

echo "Welcome To Group 16 Project"
echo
echo 'This App is programmed by: '
echo 
echo 'Mustafa All-Said'
echo 'Noor Ranya Said'
echo
echo "Here you will find three tasks"
echo
echo "Task 1 List of even multiples of any number [Mm]"
echo "Task 2 List of terms of any linear sequence[Ss]"
echo "Task 3 List of two non negative numbers in succession [Pp]"
echo
echo "Quit application [Qq]"
echo

read -n 1 -r -s -p $'Choose a Task: ' Taskselected

case $Taskselected in
#This task will load task1 by pressing M or m
[Mm])
clear
echo "Task 1: list of even multiples"
echo
#This promp will have the user enter any number that would find the even multiples
read -p "Input any number to find the even multiples: "  Input
until [[ "$Input" =~ ^[+-]?[0-9]+$ ]]; do
if [[ "$Input" == [Qq] ]]; then
break
fi
#The user has to input an integer number if the user inputs 1.75 and so on , then an error code will ensue with Error please and so on
echo
echo "Error Please Input Number Again or Quit Task 1"
read Input
done
if [[ "$Input" == [Qq] ]]; then
continue
fi
#This prompt will have the user input a number that will have the multiples be multiplied by what the user inputed from the first prompt
read -p "How many even multiples do you want: " Numbers
until [[ "$Numbers" =~ ^[0-9]+$ && "$Numbers" -gt 0 ]]; do
if [[ "$Numbers" == [Qq] ]]; then
break
fi
#If the user inputs a number less then 0 i.e. -1 and so on then it will ensue the error code,"Error"
echo
echo "Error Please Enter an Interger or Quit Task 1"
read Numbers
done
if [[ "$Numbers" == [Qq] ]]; then
continue
fi
#This echo is to verify the number and how many times it wants to multiply into input
echo
echo "You asked to find $Numbers even multiples for the number $Input"
#If Counter is less than or equal to Numbers it will intiate a while if loop
Counter=1
Output=0 
while [ $Counter -le $Numbers ]; do
Output=$(($Output + $Input))
if (($Output % 2 == 0)); then
echo $Output 
((Counter++))
fi
done
#This command is where the program has done its task and asks the user if they want to go back to the main menu
read -n 1 -r -s -p $'Press Any Key To Continue '
;;
#This will start up task 2 if the user press S or s.
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
