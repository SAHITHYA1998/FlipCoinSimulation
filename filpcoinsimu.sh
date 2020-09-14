#! /bin/bash 
echo "Welcome to Flip coin simulation program"
randomCheck=$((RANDOM%2))
if [ $randomCheck -eq 1 ]
then
        echo "Head won"
else
        echo "Tail won"
fi
