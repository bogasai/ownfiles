#!/bin/bash

read -p " Enter you actual rent amount :" rentamt
read -p " Enter you no of years for intrest :" intyear
i=1

function calint {
intrest=$(echo $rentamt \* 0.10 | bc)
echo " The intrest will be $intrest "

rent
}

function rent {
while [ $i -le $intyear ]
do
irent=$(echo $rentamt + $intrest| bc)
echo "Your rent for upcoming $i year is $irent"
rentamt=$(echo $irent)
i=$(( $i + 1 ))
calint
done
}

calint

