## 常用命令
```
$ sudo pacman -Syy // 刷新列表
$ sudo pacman -Syyu // 刷新列表，并且升级软件
$ sudo pacman -S package_name // 安装软件
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
