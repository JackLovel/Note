### qt 打包 
这一步将所有的依赖打包到文件夹里, 

需要打 Qt for desktop 命令行， 

然后将 qt creator 生成的 exe 放到单独的文件里，并切到这个目录 
```
$ windeployqt xxx.exe 
```

### inno setup 打包成 exe 
```
创建脚本->下一步下一步就可以了 

到了修改脚本这一步，需要在 platforms\* 后面的 {app}后添加 \platforms

然后执行就可以了
```
