#!/bin/bash
# file name: checkword.sh

# -q: 禁止产生任何输出


word=$1
dict_path="./dict.txt"
grep "^$1$" $dict_path -q

if [ $? -eq 0 ]; then
    echo $word is a dictionary word;
else
    echo $word is not dictionary word;
fi



