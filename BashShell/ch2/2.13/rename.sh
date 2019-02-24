#!/bin/bash
# file name: rename.sh
# feature: rename .jpg and .png file


# -iname: 忽略大小写
# -o: 匹配多个选项
# -type: 文件类型
# -maxdepth 1： 当前深度, 不包括子目录 

count=1;
for img in `find . -iname '*.png' -o -iname '*.jpg' -type f -maxdepth 1`
do
    new=img-$count.${img##*.}

    echo "Rename $img to $new"
    mv "$img" "$new"
    let count++
done






