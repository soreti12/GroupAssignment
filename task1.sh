
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
