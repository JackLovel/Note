### 拉取镜像
```
$ docker pull image_name  
```

### 查看正在运行的容器
```
$ docker ps 
$ docker ps -a // 正在运行的容器和之前执行过的容器
```

### 查看所有镜像 
```
$ docker images 
$ docker stop containter_id // 停止容器的运行
$ docker build -t aspnetapp .  // netcore asp 
```

### 运行容器
```
$ docker run -p 80:80 -d aspnetapp:latest  // 运行 aspnetapp
- 使用docker镜像 aspnetapp:latest 以后台模式启动一个容器,并将容器命名为 myapp 
$ docker run --name myapp -p 80:80 -d aspnetapp:latest 
```

### 删除镜像 
```
$ docker rmi  image_id  // image_id 为镜像id
// note： 如果出现 Error response from daemon: conflict: unable to delete XXX 
$ docker rm XXX // XXX： 为错误提示的 id
$ docker rmi image_id // 每二步执行，如果还出现上面的错误，就反复执行上面的操作
```

### docker hub 加速配置
- 以`华为`提供的加速服务为例
```
sudo mkdir -p /etc/docker
sudo tee /etc/docker/daemon.json <<- 'EOF'
{
    "registry-mirrors": ["https://w10hqdi0.mirror.swr.myhuaweicloud.com"]
}
EOF
sudo systemctl daemon-reload
sudo systemctl restart docker
```
