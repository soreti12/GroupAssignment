read -p "Please enter a number: " NUM

echo "You entered $NUM"

for (( i=1; i<=$NUM; i++ ))
do
	echo $i
done
