#!/bin/bash

# &: 放到后台
# $?: 最后一个后台进程的PID
PIDARRAY=()
for file in File1.iso File2.iso
do
    md5sum $file &
    PIDARRAY+=("$!")
done

wait ${PIDARRAY[@]} # 等待进程的结束

