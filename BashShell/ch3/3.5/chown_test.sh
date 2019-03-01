#!/bin/bash

#filename="./test.sh"
#chown root.root $filename

#directory="./directory_name/"
#chmod a+t $directory
# 递归改变当前目录下所有的文件和子目录 
#chmod 777 . -R # equal: chmod 777 $(pwd)

# add testuser user
# $ useradd testuser
# $ passwd testuser
#chown testuser.testuser . -R

# 以不同的身份运行可执文件
file_name="./executable_file" 
chmod +s $file_name
chown root.root $file_name
chmod +s $file_name
. $file_name