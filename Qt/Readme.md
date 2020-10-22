## Ubuntu18.04 Qt编译过程中，“找不到 -lGL”
```
$ sudo apt-get install libgl1-mesa-dev
```
## qt Object::connect: No such signal
```
去掉参数名， 保留类型即可

比如： connect(Rev, SIGNAL(sendData(char* ,int )), this, SLOT(SerialRevDataHandle(char *,int)));
```

## 创建自己的库
- 创建 
```
1. 文件->Library->C++ Library->Define Project Details(Shared Library)
2. 右击项目 构建, 生成了一堆 so 和 o 为后缀的文件 
```
- 使用 
```
1. 在新的项目里 创建一个 3rdparty 的文件夹，把所有的生成好的 so 和 o 文件放到里面
2. 新项目添加原来的 库的所有头文件 
3. 右击项目 添加库... -> 外部库->添加库(添加 so 文件)
```
