#!/bin/bash

declare -A state_array

state_array[1]=one
state_array[2]=two
state_array[3]=three

echo ${state_array[*]}   # 所有的项
echo ${!state_array[@]}  # 所有的索引
 
# $0: shell name
# $1: first argument
# $#: the number of argument 
echo A1: $0, B1: $1
echo $#
