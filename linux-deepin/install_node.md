## 下载
[tao mirror](https://npm.taobao.org/mirrors/node/v12.1.0/)

## 安装
```
$ tar xvf node-v12.1.0.tar.gz 
$ cd node-v12.1.0/
$ ./configure --prefix=/usr/local/
$ sudo make -j4
$ sudo make install 
```
## npm 源
```
修改~/.npmrc文件(没有就自行新建一个)，写入registry = https://registry.npm.taobao.org
```
