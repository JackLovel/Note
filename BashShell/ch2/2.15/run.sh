#!/bin/bash

# -e: 转义

echo -e "1\nhello\n" > input.data
./interactive.sh < input.data
