#!/bin/bash

function shortname(){
    ctr=0
    for word in "$@"
    do
        if [ $ctr != 0 ]
        then
            echo -n "."
        fi
        echo -n ${word:0:1}
        ((ctr++))
    done
    echo ""
}

read tc

while [ $tc -gt 0 ]
do
    read text
    text=`echo $text | tr '[:lower:]' '[:upper:]'`
    shortname $text
    ((tc--))
done