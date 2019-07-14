### 更换国内源
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
$ chsh -s /bin/zsh
```

### 更换输入法

```
// 输入法比较全：有五笔　和　拼音
sudo pacman -S fcitx-sogoupinyin
sudo pacman -S fcitx-im # 全部安装
sudo pacman -S fcitx-configtool # 图形化配置工具
```

### 设置中文输入法环境变量，编辑~/.xprofile文件，增加下面几行(如果文件不存在，则新建)
```
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS="@im=fcitx"
```
