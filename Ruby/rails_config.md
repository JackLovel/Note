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
## 问题
- [执行 rails server 报错 Could not find a JavaScript runtime](https://ruby-china.org/topics/1605)
- 执行 rails new demo 时会出现下面的情况, 属于正常现象; 
```
// 注意此时进程并没有停止，等待它下载文件解决一些依赖问题，等一会儿它会自动下载一些文件，
The dependency tzinfo-data (>= 0) will be unused by any of the 
platforms Bundler is installing for. Bundler is installing for 
ruby but the dependency is only for x86-mingw32, x86-mswin32, 
x64-mingw32, java. To add those platforms to the bundle, 
run `bundle lock --add-platform x86-mingw32 x86-mswin32 x64-mingw32 java`. 
```
## 参考
- [RubyGem 清华镜像](https://gems.ruby-china.com/)
- [如何快速正确的安装 Ruby, Rails 运行环境](https://ruby-china.org/wiki/install_ruby_guide)
