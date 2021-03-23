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
echo "Task 1: list of even multiples"
echo
read -p "Input any number to find the even multiples: "  Input
until [[ "$Input" =~ ^[+-]?[0-9]+$ ]]; do
if [[ "$Input" == [Qq] ]]; then
break
fi
echo
echo "Error Please Input Number Again or Quit Task 1"
read Input
done
if [[ "$Input" == [Qq] ]]; then
continue
fi
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
read -n 1 -r -s -p $'Press Any Key To Continue '
;;
esac
done
