## 添加新的用户
比如：deploy, 添加新用户的目的：主要是用来存放项目文件，管理员目录下不推荐存放项目。
```
$ useradd deploy -m
$ passwd deploy
$ gpasswd -a deploy root // 将deploy 用户添加到 root 组
```

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
> 选项

- 位置：/usr/local/nginx

> warning:
