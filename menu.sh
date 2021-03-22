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
