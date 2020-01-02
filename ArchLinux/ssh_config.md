## 前提
```
window 中有 xshell, 那么linux 有 ssh server
```
## 配置
```
$ ssh -v // 检测是否安装
$ pacman -S openssh // 如果没有安装，就安装

// 修改一些配置
$ sudo vim /etc/ssh/sshd_config
$ systemctl start sshd.service      // 启动 ssh 服务
```

## 使用方法
```
// 以 root 用户和主机 192.168.1.100(公网ip) 为例
$ ssh root@192.168.1.100 -p 22
```

## faq 
- IT IS POSSIBLE THAT SOMEONE IS DOING SOMETHING NASTY!
```
$ rm -rf ~/.ssh/known_hosts
```
