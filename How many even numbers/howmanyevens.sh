#!/bin/bash

function count(){
    total=0
    for num in "$@"
    do
        if [ `expr $num % 2` = 0 ]
        then
            ((total++))
        fi
    done
    echo $total
}

read size
read arr

count $arr