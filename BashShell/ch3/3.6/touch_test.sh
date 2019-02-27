#!/bin/bash 

file_name="immuable_file_test.sh"

if [! -f $file_name ]; then
    touch $file_name
fi

touch -a $file_name   # modify file access time 
touch -m $file_name   # file content modify time 
touch -d "Fri Jun 25 20:50:14 IST 1999" touch_test.sh