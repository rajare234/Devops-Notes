#!/bin/bash

echo "Enter the string"
read n

len=${#n} 
rev=""
 
while [ "$len" -gt 0 ]
 do

len=$((len - 1))
rev="$rev${n:len:1}" 
done

echo "Reversed string:$rev" 
