```
$ yum install -y gcc ncurses-devel
$ sudo yum-builddep emacs
$ wget http://mirrors.kernel.org/gnu/emacs/emacs-26.1.tar.gz
$ tar -zxvf emacs-26.1.tar.gz
$ cd emacs-26.1
$ ./autogen.sh 
$ ./configure --with-x-toolkit=no --with-xpm=no \
  --with-jpeg=no --with-gif=no \
  --with-tiff=no --with-gnutls=no  \
  --with-pop
$ make
$ sudo make install
$ which emacs  // 输出：/usr/local/bin/emacs， 所以 输入 emacs 无法打开 emacs 
$ ln -s /usr/local/bin/emacs /usr/bin/emacs // 创建符号链接 emacs 
```
