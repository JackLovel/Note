## Ubuntu18.04 Qt编译过程中，“找不到 -lGL”
```
$ sudo apt-get install libgl1-mesa-dev
```
## qt Object::connect: No such signal
```
去掉参数名， 保留类型即可

比如： connect(Rev, SIGNAL(sendData(char* ,int )), this, SLOT(SerialRevDataHandle(char *,int)));
```

