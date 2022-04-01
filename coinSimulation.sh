#!/bin/bash -x

headcount=0;
tailcount=0;

for (( i=0; i<=21; i++ ))
do
	coin=$((RANDOM%2))
	if [ $coin -eq 0 ]
	then
		echo "head";
		((headcount++));
	else
		echo "tail";
		((tailcount++));
	fi
done

echo "head wins : $headcount times";
echo "tail wins : $tailcount times";

if [[ $headcount -ne $tailcount ]]
then
	echo "Simulation Win";
else
	echo "Simulation Tie";
fi


if [[ $headcount -gt $tailcount ]]
then
	sub=$((headcount - tailcount));
	echo "head wins by $sub times";
elif [[ $tailcount -gt $headcount ]]
then
	sub=$((tailcount - headcount));
	echo "tail wins by $sub times"
else
	echo "continue till the the differnce of 2 achieved";
fi
