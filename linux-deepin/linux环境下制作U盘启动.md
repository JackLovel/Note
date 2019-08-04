## 具体的命令
// 镜像的本地路径： /home/hcf/dev/iso/ubuntu-16.04-desktop-amd64.iso    
// U盘分区： /dev/sdc
```
$ sudo fdisk -l 
$ umount /dev/sdc1
$ sudo mkfs.vfat /dev/sdc -I
$ sudo dd bs=4M if=/home/gog/下载/manjaro-kde-18.0.4-stable-x86_64.iso of=/dev/sdc status=progress
```
## 参考
- [linux 下使用dd制作启动U盘 安装ubuntu](https://blog.csdn.net/zeli1511/article/details/79019823)
