#!/bin/sh

#mailling the answer to a factorial

MAIL=`which mail`

factorial=1
counter=1

read -p "Enter the number: " value
while [ $counter -le $value ]
	do
		factorial=$[$factorial * $counter]
		counter=$[$counter + 1]
	done

echo The factorial of $value is $factorial |$MAIL -s "Factorial answer" $USER
echo " The result has been mailed to you. "
