#!/bin/bash

echo "Q5_a"
read -p "enter string:" string
echo $string | rev

echo "Q5_b"
i=${#string}
for ((j=i-1;j>=0;j--))
do
{
    c=${string:$j:1}
    ch=$(echo $c | tr "[a-zA-Z]" "[b-zA-ZA]")
    str=$str$ch
}
done
echo $str

echo "Q5_c"
read -p "enter string:" string
((i/=2))
i=${#string}
char=$(echo ${string:0:$i} | rev)
st=$char${string:$i:$i}
echo $st



