#! /bin/bash 
echo "Welcome to Flip coin simulation program"

read -p "Enter the number to Flip a coin multiple times :" num
for ((i=0;i<=num;i++))
do
        randomCheck=$((RANDOM%2))
        if [ $randomCheck -eq 1 ]
        then
                headCount=$((headCount+1))
        else
                tailCount=$((tailCount+1))
        fi
done
echo "Head won $headCount times"
echo "Tail won $tailCount times"
