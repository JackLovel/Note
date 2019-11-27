## 添加新的用户
比如：deploy, 添加新用户的目的：主要是用来存放项目文件，管理员目录下不推荐存放项目。
```
$ useradd deploy -m
$ passwd deploy
```

# 全部的安装环境在 root 下安装
## ruby (rbenv方式)
### 安装 rbenv
```
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
# 用来编译安装 ruby
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
# 用来管理 gemset, 可选, 因为有 bundler 也没什么必要
git clone git://github.com/jamis/rbenv-gemset.git  ~/.rbenv/plugins/rbenv-gemset
# 通过 rbenv update 命令来更新 rbenv 以及所有插件, 推荐
git clone git://github.com/rkh/rbenv-update.git ~/.rbenv/plugins/rbenv-update
# 使用 Ruby China 的镜像安装 Ruby, 国内用户推荐
git clone git://github.com/AndorChen/rbenv-china-mirror.git ~/.rbenv/plugins/rbenv-china-mirror
```
然后把下面代码放到 ~/.bashrc
```
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
```
添加完成之后执行 source ~/.bashrc
### ruby
```
rbenv install --list  # 列出所有 ruby 版本
rbenv install 2.6.5     # 安装 2.6.5
```

### 设置版本
```
rbenv global 2.6.5      # 默认使用 2.6.5
```

## Passenger + nginx
### Passenger
```
$ gem install passenger
```
### nginx
```
$ passenger-install-nginx-module
```
> 安装时的一些选项

- 1. This installer will compile and install Nginx with Passenger support.
- ruby
- 位置：/usr/local/nginx

> warning:

> nginx.conf 配置
```
$ vim /usr/local/nginx/conf/nginx.conf 
```
然后添加如下(没有的注释掉，不要删掉！)：
```
worker_processes  1;

#error_log  logs/error.log;
#error_log  logs/error.log  notice;
#error_log  logs/error.log  info;

#pid        logs/nginx.pid;


events {
    worker_connections  1024;
}


http {
    # 下面两行是自动生成的
    passenger_root /usr/local/rvm/gems/ruby-2.6.3/gems/passenger-6.0.4;
    passenger_ruby /usr/local/rvm/gems/ruby-2.6.3/wrappers/ruby;

    include       mime.types;
    default_type  application/octet-stream;

    sendfile        on;
    keepalive_timeout  65;


    server {
        listen       80;
        server_name  527up.xyz; # 填入你的域名
        root /home/deploy/demo/public; # 填入项目的路径，例如：我的项目 demo 的路径是 /home/deploy/demo/
        passenger_enabled on;
        rails_env production; # 开启生产环境
    }
}
```
> 创建链接
```
$ sudo ln -s /usr/local/nginx/sbin/nginx /usr/local/sbin/
$ /usr/local/nginx/sbin/nginx -c /usr/local/nginx/conf/nginx.conf
```
> 检验格式 
```
$ nginx -t 
```
> 加载
```
$ nginx -s reload

补充：关闭nginx 
$ nginx -s stop
```

## FAQ
> 项目权限问题
```
$ chmod 755 -R <你的项目文件夹>
```
> 公网ip无法访问（需要开放80端口）
```
```
> Make sure that `gem install sqlite3 -v '1.4.1' --source 
```
$ apt-get install sqlite3 libsqlite3-dev
```
