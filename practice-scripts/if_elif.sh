#!/bin/bash

a=100
b=200
c=300

if [[ $a -gt $b && $a -gt $c ]]
then
echo "A is greatest"
elif [[ $b -gt $a && $b -gt $c ]]
then
echo "B is greatest"
else
echo "C is greatest"
fi

