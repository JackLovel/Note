###
```
$ sudo pacman-mirrors -i -c China -m rank  #选一个清华源就行
$ sudo pacman -Syyu
$ sudo pacman -S vim
```

### 
```
$ sudo vim /etc/pacman.conf
```
添加内容
```
[archlinuxcn]
SigLevel = Optional TrustedOnly
Server = https://mirrors.ustc.edu.cn/archlinuxcn/$arch
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
$ chsh -s /bin/zsha
```
