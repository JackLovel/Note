#!/usr/bin/env bash

file_name="./file.txt"
cat $file_name | wc -l

wc -w $file_name
cat $file_name | wc -c 

tree . -P "*sh"
