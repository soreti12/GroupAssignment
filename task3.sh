# GET INPUT FROM USER
read -p "Please enter a number: " NUM

echo "You entered $NUM"

OUTPUT=0

for (( i=1; i<=$NUM; i++ ))
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
