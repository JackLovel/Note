### notice
```
Don't remove(delete) system self python!
Because some other software depend on it; 
```


### pip install

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

### Ipython configure
> install
```bash
# py2
$  pip install ipython

# py3
$  pip3 install ipython
```
> edit bashrc
```
$ vim ~/.bashrc
```
> add content 
```
# py2
alias ipython="python -m IPython"

# py3
alias ipython3="python3 -m IPython"
```
> run
```
$ source ~/.bashrc 

# py2
$ ipython
or
#py3
$ ipython3
```
