#!/bin/bash

sort()
{
    l=$((i-1))
    for (( j=0 ; j<$l ; j++))
    do
    {
        k=$((j+1))
        if [[ ${arr[$j]} -gt ${arr[$k]} ]]
        then
        {
            temp=${arr[$j]}
            arr[$j]=${arr[$k]}
            arr[$k]=$temp
        }
        fi
    }
    done
    ((i--))
    if [[ $i -gt 2 ]]
    then
    sort
    else
    return
    fi
}

read string
i=0
arr={}
for n in ${string//,/ }
do
let arr[$i]=$n
((i++))
done
sort
echo ${arr[*]}



