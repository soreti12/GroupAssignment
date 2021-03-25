INPUT=10
OUTPUT=0
task2 = () => {

for (( i=1; i<$RUN; i++ ))
do 
	OUTPUT= $VAL * $i  + $VAL2
	echo $OUTPUT
done

}

task2 $INPUT
