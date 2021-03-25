OUTPUT=0
read -p "Please enter a value: " INPUT1
read -p "Please enter another value: " INPUT2
read -p "Please specify how many times you would like the application to run: " RUN


task2() {

for (( i=1; i<$RUN; i++ ))
do 
	OUTPUT=$(( $INPUT1 * $i + $INPUT2 ))
	
	echo $OUTPUT

done

}

task2
