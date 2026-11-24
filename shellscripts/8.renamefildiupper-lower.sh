#!/bin/bash

for i in $*
do

mv "$i" "$(tr [:upper:] [:lower:] <<< "$i")" 

done

