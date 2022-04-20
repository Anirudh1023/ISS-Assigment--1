#!/bin/bash

echo "Q3_a"
wc -c $1 | awk '{print $1}'

echo "Q3_b"
wc -l $1 | awk '{print $1}'

echo "Q3_c"
wc -w $1 | awk '{print $1}'

echo "Q3_d"
i=1
while read line
do
printf "Line No : $i - Count of words :"
echo $line | wc -w 
((i++))
done <$1

echo "Q3_e"
cat $1 | tr ' ' '\n' | awk '{!a[$0]++} END { for (i in a) if(a[i]>1 && i != '\n') print "Word : " i " - Count of repetition: " a[i] }'