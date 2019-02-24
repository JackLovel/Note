#!/bin/bash
# feature: sort


sort -C sorted.txt ;
if [ $? -eq 0 ]; then
    echo Sorted;
else
    echo Unsorted
fi

