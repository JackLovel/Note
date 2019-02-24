#!/bin/bash
# 根据扩展名切分文件名

file_jpg="sample.jpg"
name=${file_jpg%.*}
echo File name is : $name

extension=${file_jpg#*.}
echo Extenstion is: jpg

VAR=hack.fun.book.txt
echo ${VAR%.*}
echo ${VAR%%.*}

echo ${VAR#*.}
echo ${VAR##*.}
