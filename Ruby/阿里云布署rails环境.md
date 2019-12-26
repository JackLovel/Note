## 添加新的用户
比如：deploy, 添加新用户的目的：主要是用来存放项目文件，管理员目录下不推荐存放项目。
```
$ useradd deploy -m
$ passwd deploy
```

# 全部的安装环境在 非root 下安装
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
$ apt install -y nodejs # 安装依赖
$ rbenv install --list  # 列出所有 ruby 版本
$ rbenv install 2.6.5     # 安装 2.6.5
```

### rail 
```
$ gem sources --add https://gems.ruby-china.com/ --remove https://rubygems.org/
$ gem install rails -v 5.2.3
```
### 设置版本
设置 ruby 版本为 2.6.5
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
- 位置：/home/deploy/nginx

> warning:

> [nginx.conf 配置参考](product_config/nginx.conf)
```
$ cd /home/delploy/nginx/
$ cp conf/nginx.conf conf/nginx.conf.bak 
$ vim conf/nginx.conf
```
> 创建链接
```
$ /home/delploy/nginx
$ sbin/nginx -c conf/nginx.conf
```
> 检验格式 
```
$ /home/delploy/nginx/sbin/nginx -t 
```
> 加载
```
$ /home/delploy/nginx/sbin/nginx -s reload

补充：关闭nginx 
$ /home/delploy/nginx/sbin/nginx -s stop
```

### 配置 production 环境
```
$ bundle exec rake secret // 拿到生成的 key
$ vim config/secrets.yml 
```
格式：
```
production:
  secret_key_base: 这里放置生成的 key 的字符串
```
配置权限
```
$ chmod 755 config/database.yml config/secrets.yml
```
编译 Rails assets 和 生成生产环境的数据库
```
$ bundle exec rake assets:precompile db:migrate RAILS_ENV=production
```
## Postsql
```
$ apt install postgresql -y

```
## FAQ
> 项目权限问题，这是你布署成功的主要原因，或者有其他原因
```
$ ll <你的项目文件夹>
$ chmod 755 -R <你的项目文件夹>
```
> 公网ip无法访问（需要开放80端口）
```
到阿里云管理界面添加即可
```
> Make sure that `gem install sqlite3 -v '1.4.1' --source 
```
$ apt-get install sqlite3 libsqlite3-dev
```
> 如何配置当前环境为生产环境
```
nginx.conf 添加 rails_env production; # 开启生产环境
```
> open() "/home/xxxx/nginx/logs/nginx.pid" failed (2: No such file or directory)
> nginx: [error] invalid PID number "" in "/usr/local/nginx/logs/nginx.pid"
```
$ /usr/local/nginx/sbin/nginx -c /usr/local/nginx/conf/nginx.conf
```
> 如何添加 数据到数据库中, 比如添加 `管理员`
`seed.rb` 的数据：
```
User.create!(name: "Example User",
             email: "example@railstutorial.org",
             password: "123546",
             password_confirmation: "123546",
             admin: true)
```
然后运行
```
$ rails db:seed RAILS_ENV='production'
```
