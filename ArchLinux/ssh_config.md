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

## 不需要输入密码登录
需要把公钥发送到服务器里
```
$ cat ~/.ssh/id_rsa.pub | ssh -p 22 root@电脑的ip地址 'cat >> ~/.ssh/authorized_keys'
```

## faq 
- IT IS POSSIBLE THAT SOMEONE IS DOING SOMETHING NASTY!
```
$ rm -rf ~/.ssh/known_hosts
```
