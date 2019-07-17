### ruby
> ruby PATH 环境

```
$ export PATH=/home/gog/.gem/ruby/2.6.0/bin:$PATH
```


### 配置 gem 源  
```
$ gem sources --add https://gems.ruby-china.com/ --remove https://rubygems.org/
$ gem sources -l
$ gem sources -u // 可以不做
```

### bundler
使用以下命令替换 bundler 默认源 bash
```
bundle config mirror.https://rubygems.org https://gems.ruby-china.com/
```

### rails
```
# gem install rails
# rails new demo  // 创建一个 demo 项目
# cd demo
# rails server  // 启动服务
```

## 参考
- [RubyGem 清华镜像](https://gems.ruby-china.com/)
- [如何快速正确的安装 Ruby, Rails 运行环境](https://ruby-china.org/wiki/install_ruby_guide)
