### notice
```
Don't remove(delete) system self python!
Because some other software depend on it; 
```


### pip configure

```bash
# for python2
> sudo apt install python-pip

# for python3
> sudo apt install python3-pip

# check it 
> pip3 -v 
```

### pypi configure
```bash
$ mkdir ~/.pip
$ cd ~/.pip
$ touch pip.conf
```
then add following content
```
[global]
index-url = http://pypi.douban.com/simple
[install]
trusted-host=pypi.douban.com
```

