## zypper 包管理器
```
$ sudo zypper refresh // 刷新
$ sudo zypper update // 更新
$ sudo zypper se <包名> // 搜索包
$ sudo zypper in <包名> // 安装包
$ sudo zypper remove <包名>
```

## 问题

- 错误：依赖检测失败：XX 被 YY 需要 
```
# 需要在命令后面添加 --nodeps --force，比如：
$ sudo rpm -ivh baidunetdisk-3.3.2.x86_64.rpm  --nodeps --force
```
