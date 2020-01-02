## 前提
```
window 中有 xshell, 那么linux 有 ssh server
```
## 配置
```
$ pacman -S git 
```

## 使用方法
```
// 以 root 用户和主机 192.168.1.100(公网ip) 为例
$ ssh root@192.168.1.100
```

## faq 
- IT IS POSSIBLE THAT SOMEONE IS DOING SOMETHING NASTY!
```
$ rm -rf ~/.ssh/known_hosts
```
