#!/bin/bash

n=$(cat $1 | wc -l) 

while [ $n -gt 0 ]
do

sed -n "$n"p $1 >>temp 
((n--))
done

cat temp 
rm temp

