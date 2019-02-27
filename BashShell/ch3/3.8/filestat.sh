#!/bin/bash

# 如果没有指定目录，则提前中止程序
# $#: the number of argument
# $0: shell file name 

if [ $# -ne 1 ]; then
    echo "Usage is $0 basepath"
    exit
fi

# 第一个参数：即指定的目录名
path=$1

declare -A statarray;  # 声明一个关联数组

while read line;
do
    ftype=`file -b "$line" | cut -d, -f1`
    let statarray["$ftype"]++;

done < <(find $path -type f -print)

echo ================ File types and counts ==============
for ftype in "${!statarray[@]}";
do
    echo $ftype :  ${statarray["$ftype"]}
done
