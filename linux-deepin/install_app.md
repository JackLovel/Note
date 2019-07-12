### 原代码编译安装 
```
$ sudo ./configure 
$ sudo make 
$ sudo make install 
``` 

### deb 包
以　stream 安装为例
```
// download deb package from: https://store.steampowered.com/about/
$ sudo dpkg -i steam_latest.deb 
$ sudo apt-get install -f  // 自动解决一些依赖问题

// 再次安装
$ sudo dpkg -i steam_latest.deb 
```
