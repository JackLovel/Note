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
$ ./configure --with-mailutils // 也可以用：--prefix=/usr/local/emacs/ 指定一个安装目录
$ sudo make && sudo make install 
```

### 补充
> linux, configure --prefix=/有什么用
```
指定安装路径

不指定prefix，则可执行文件默认放在/usr /local/bin，库文件默认放在/usr/local/lib，
配置文件默认放在/usr/local/etc。
其它的资源文件放在/usr /local/share。你要卸载这个程序，
要么在原来的make目录下用一次make uninstall（前提是make文件指定过uninstall）,
要么去上述目录里面把相关的文件一个个手工删掉。

指定prefix，直接删掉一个文件夹就够了。
```
