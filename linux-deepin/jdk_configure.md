```
# download jdk(such version: jdk1.8)
wget -O jdk-1.8.tar.gz  \
https://download.oracle.com/otn-pub/java/jdk/8u191-b12/2787e4a523244c269598db4e85c51e0c/jdk-8u191-linux-x64.tar.gz

# expend .tar.gz file 
tar -zxvf jdk-1.8.tar.gz
```

> 添加配置
```
export JAVA_HOME= 此处真写jdk的绝对路径
export JRE_HOME=${JAVA_HOME}/jre
export CLASSPATH=.:${JAVA_HOME}/lib:${JRE_HOME}/lib
export PATH=${JAVA_HOME}/bin:$PATH
```
> 检查
```
$ source ~/.bashrc 

# 有输出结果就是正确
$ java -version 
$ javac 
```
[ubuntu jdk](https://blog.csdn.net/qq_29695701/article/details/77454395)
