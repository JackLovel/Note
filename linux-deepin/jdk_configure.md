> 下载，并解压
```
# download jdk(such version: jdk1.8)
download from official's website, but don't use wget download jdk  

# expend .tar.gz file 
tar -zxvf jdk-1.8.tar.gz
```

> 添加配置
```
export JAVA_HOME= 此处填写jdk的绝对路径
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
> 参考

- [ubuntu jdk][1]
- [downloading-java-jdk-on-linux-via-wget-is-shown-license-page-instead][2]

[1]:https://blog.csdn.net/qq_29695701/article/details/77454395
[2]:https://stackoverflow.com/questions/10268583/downloading-java-jdk-on-linux-via-wget-is-shown-license-page-instead
