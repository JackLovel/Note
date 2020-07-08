## 常用命令
```
$ sudo pacman -Syy // 刷新列表
$ sudo pacman -Syyu // 刷新列表，并且升级软件
$ sudo pacman -S package_name // 安装软件
$ sudo pacman -R package_name // 删除安装包
$ sudo pacman -Ss openjdk8 // 查找对应的 openjdk8 的包

// 打包
$ tar -zcvf index.tar.gz index.html css/ js/ images/　
// 压缩
$ tar -zxvf  index.tar.gz
// 解压缩
$ tar -zxvf  index.tar.gz /home/www


// 查看ip 
$ ip addr 
```


## 常见问题

> Manjaro KDE 更新之后，中文无法显示(方块)

```
$ locale // 查看安装语言包
$ sudo pacman -S  adobe-source-han-serif-cn-fonts // 安装中文包
$ reboot // 重启系统
```
> 防卡死
- 不要开太多浏览器标签。

> 无法升级， 出现锁定数据库的问题
```
$ rm -rf /var/lib/pacman/db.lck
```

## 添加国内源
```
sudo vim /etc/pacman.conf
```
- 添加内容
```
[archlinuxcn]
SigLevel = Optional TrustedOnly
Server = https://mirrors.ustc.edu.cn/archlinuxcn/$arch
```
- 更新 
```
sudo pacman -Syy && sudo pacman -S archlinuxcn-keyring
```
