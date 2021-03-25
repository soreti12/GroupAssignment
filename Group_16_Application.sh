# INITIAL MENU INCLUDES INTRODUCTION AND INSTRUCTIONS OF APPLICATION
echo "Welcome!"
echo "This application will allow users to performce some advanced mathematical operations"

# RETRIEVE NUMBER FROM USER
read -p "Please enter a number: " NUM

echo "You picked $NUM"

# RETRIEVE OPERATION KEY FROM USER
read -p "
Now choose from the following options:

M or m:
S or s:
P or p:
" VAR
echo "You have chosen $VAR"

# IF STATEMENT
# USING REGEX TO DETERMINE IF USER INPUT FOLLOWS PARAMETERS
if [[ "$VAR" =~ [mps][MPS]$ ]]
then 
	echo "$VAR"
else 
	echo "ERROR, please enter a valid input"
fi

