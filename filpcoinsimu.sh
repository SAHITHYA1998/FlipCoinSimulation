#! /bin/bash 
echo "Welcome to Flip coin simulation program"

echo "Random number when Head wins=1"
echo "Random number when Tail Wins=0"
read -p "Enter the number of times loops has run :" num
read -p "Enter the conditiion upto which either Head or Tail have won " count
tie=0
process=0
        if [ $count -ge $num ]
        then
                process=1
                echo "No of times Loop executed is less than or equal to condition provided"
        fi

if [ ! $process -eq 1 ]
then
for ((i=1;i<=num;i++))
do
randomCheck=$(( RANDOM%2 ))
        if [ $randomCheck -eq 1 ]
        then ((++head))
        else ((++tail))
        fi

        if [[ $head -ge 21 ]] || [[ $tail -ge 21 ]]
        then
                if [ $head -gt $tail ]
                then    if [ ! $tie -eq 1 ]
                        then
                              echo "Head wins by $((head-tail)) times"
                        break
                        else
                                ((headCount++))
                        fi

                elif [ $head -eq $tail ]
                then
                                echo "It's a tie"
                                tie=1

                else
                        if [ ! $tie -eq 1 ]
                        then
                                echo "Tail wins by $((tail-head)) times"
                        break
                        else
                                ((tailCount++))
                        fi
                fi
        fi
done
fi
