### error

> upgrade system than toolbar not display
```
$ sudo apt-get update && sudo apt-get dist-upgrade && sudo apt-get install dde
```

> 管理服务
```
// 比如 nginx 服务
$ systemctl {status|stop|restart|start} nginx
```
> 更新软件列表/升级全部包
```
// debian
$ sudo apt-get update && sudo apt-get upgrade 

// centos
$ yum clean all // 清理缓存
$ yum makecache
```
