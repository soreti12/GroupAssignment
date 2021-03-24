read -p "Please enter your first value: " VAL1
read -p "Please enter your second value: " VAL2

read -p "Please state how many times you would like the program to run: " RUN

OUTPUT=0

for (( i=1; i<$RUN; i++ ))
do 
	$OUTPUT= $VAL1(i) + $VAL2
done

echo $OUTPUT
