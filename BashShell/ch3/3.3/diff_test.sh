#!/bin/bash

#comm A.txt B.txt
#comm A.txt B.txt -1 -2
#comm A.txt B.txt -3
#comm A.txt B.txt -3 | sed 's/^\t//'

# get A.txt and B.txt 差集
#comm A.txt B.txt  -2 -3
# B.txt的差集
comm A.txt B.txt -1 -3
