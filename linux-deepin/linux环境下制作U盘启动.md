## 具体的命令
// 镜像的本地路径： /home/hcf/dev/iso/ubuntu-16.04-desktop-amd64.iso    
// U盘分区： /dev/sdc
```
$ sudo fdisk -l 
$ umount /dev/sdc
$ sudo dd bs=4M if=/home/hcf/dev/iso/ubuntu-16.04-desktop-amd64.iso of=/dev/sdc
```
