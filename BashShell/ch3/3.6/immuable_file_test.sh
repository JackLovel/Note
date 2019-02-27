#!/bin/bash

file_name="./immutable.txt"

# if file is not exist, then create it 
if [ ! -f file_name ]; then
    touch $file_name
fi

sudo chattr +i $file_name # add immutable 
 
#chattr -i $file_name # remove immutable

