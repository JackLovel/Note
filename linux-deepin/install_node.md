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
$ npm config set registry https://registry.npm.taobao.org

$ npm config set electron_mirror https://npm.taobao.org/mirrors/electron/
```
