## 安装 docker 
```
$ pacman -S docker 
$ sudo groupadd docker
$ sudo usermod -aG docker $(whoami)
$ systemctl restart docker.service
```

## 参考
- [生产环境使用 Docker 部署 Rails 应用 Puma 和 Sidekiq](https://ruby-china.org/topics/30098)
