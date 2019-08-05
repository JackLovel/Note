### error

> upgrade system than toolbar not display
```
$ sudo apt-get update && sudo apt-get dist-upgrade && sudo apt-get install dde
```

> 管理服务
```
// 比如 nginx 服务
$ systemctl {status|stop|restart|start|enable} nginx
```
> 更新软件列表/升级全部包
```
// debian
$ sudo apt-get update     //　更新软件列表 
$ sudo apt-get upgrade 　 //  升级软件
 
// centos
$ yum clean all // 清理缓存
$ yum makecache
```
> apt 相关命令
```bash
$ sudo apt-get remove package_name // 卸载一个软件包但是保留相关的配置文件
$ apt-get -purge remove package_name // 卸载一个软件包同时删除配置文件

$ sudo apt-get install -y package_name // 安装软件
```
