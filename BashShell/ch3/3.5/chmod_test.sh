#!/bin/bash

filename="./filename.txt"
chmod u=rwx,g=rw,o=r $filename
chmod a-x $filename  # 删除所有执行权根
chmod a+x $filename  # 添加所有执行权根
chmod 764 $filename  # rwx/rw/r



