## add source list
> modify
```bash
$ sudo cp /etc/apt/sources.list /etc/apt/sources.list.bak  # bak Original source file 
$ sudo vim /etc/apt/sources.list                           # modify source file 
```
> add content to new sources file 
```
$ deb [by-hash=force] http://mirrors.aliyun.com/deepin panda main contrib non-free

```
> update(require) or upgrade (optional)
```
$ sudo apt-get update                                      # update software list 
$ sudo apt-get upgrade                                     # upgrade software 
```

- 方法一
```
cat /etc/issue
```
- 方法二

```
$ sudo lsb_release -a 
```

### 永久的获取root权限
```
$ sudo passwd root
```
