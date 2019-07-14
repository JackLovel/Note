### 首页到 emacs 下载 源码：     
[下载地址](https://www.gnu.org/software/emacs/download.html#gnu-linux)
```
$ tar xvf emacs-26.2.tar.gz  // 解压
```

### 安装依赖
```
sudo apt-get install build-essential \
  texinfo libx11-dev libxpm-dev libjpeg-dev \
  libpng-dev libgif-dev libtiff-dev libgtk2.0-dev \
  libncurses-dev libxpm-dev automake autoconf \
```

### 编译
```
$ ./configure --with-mailutils // 可以用：--prefix= 指定一个安装目录
$ sudo make && sudo make install 
```


