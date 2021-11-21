#!/bin/bash

round()
{
value="$1"
if [ ${value:0:1} == "-" ]
then
echo $(printf %.$2f $(echo "scale=$2;(((10^$2)*$1)-0.5)/(10^$2)" | bc))
else
echo $(printf %.$2f $(echo "scale=$2;(((10^$2)*$1)+0.5)/(10^$2)" | bc))
fi
};
read tc

while [ $tc -gt 0 ]
do
    read equ
    eqs=($equ)
    IFS="=" sides=($equ)
    left="${sides[0]}"
    right="${sides[1]}"
    s=${eqs[1]}
    b=${eqs[2]}
    
    if [ "$s" == "/" -a "$b" == "0" ]
    then
        echo "no"
    else
        res=`echo "scale=4; $left"|bc`
        
        res=`round $res 2`
        
        if [ "$res" == "${right:1}" ]
        then
            echo "yes"
        else
            echo "no"
        fi
    fi
    ((tc--))
done