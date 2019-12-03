### 安装
```
在Linux下可以使用 dd　来制作启动助手;
window下推荐使用　rufus　来制作。
```
### 更换国内源
```
$ sudo pacman-mirrors -i -c China -m rank  #选一个清华源就行
$ sudo pacman -Syyu  // 刷新软件列表，并升级软件
$ sudo pacman -S vim
```

###
```
$ sudo pacman -Syy && sudo pacman -S archlinuxcn-keyring
```
### 安装 zsh
```
$ sudo pacman -S git
$ sudo pacman -S zsh
$ sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
$ chsh -s /bin/zsh
```

### 更换输入法
[小狼毫输入法的安装方法](https://github.com/JackLovel/Note/blob/master/ArchLinux/install_rime.org#%E5%AE%89%E8%A3%85%E6%AD%A5%E9%AA%A4)

### 安装一些常用软件
除了命令行安装之外，还可以在 `Octopi`　图形界面进行软件的安装
```
sudo pacman -Sy yaourt
sudo pacman -S archlinuxcn-keyring
sudo pacman -S qtcreator # 牛逼的IDE
sudo pacman -S visual-studio-code-bin # vscode
sudo pacman -S make # 牛逼的工具
sudo pacman -S screenfetch 
sudo pacman -S deepin.com.qq.office # qq
sudo pacman -S clang # 牛逼的编译器
sudo pacman -S gdb # 默认没有
sudo pacman -S wps-office
pacman -S google-chrome
```
如果怕烦的话，可以复制下面的一行：
```
sudo pacman -Sy yaourt archlinuxcn-keyring qtcreator \
visual-studio-code-bin make screenfetch deepin.com.qq.office \
clang gdb wps-office google-chrome
```
### 参考文档
- [原文](https://zhuanlan.zhihu.com/p/50918522)
