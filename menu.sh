read -p "Welcome!"

read -p "This application will allow users to performce some advanced mathematical operations"

read -p "Please enter a number: " NUM

echo "
Now choose from the following options:

M or m:
S or s:
P or p:

"
read VAR

if [[ $VAR =~ [\M\m\S\s\P\p] ]]
then 
	echo $VAR
else 
	echo "ERROR, please enter a valid input"
fi




or

while true; do 

echo "Welcome To Group 16 Project"
echo "Here you will find three tasks"
echo "Task 1 List of even multiples of any number [Mm]"
echo "Task 2 List of terms of any linear sequence[Ss]"
echo "Task 3 List of two non negative numbers in succession [Pp]"
echo "Quit application [Qq]"

read -n 1 -r -s -p $'Choose a Task: ' Taskselected

case $Taskselected in

[Mm])
clear
