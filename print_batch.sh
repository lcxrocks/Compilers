#!/bin/bash
rm Test/Tests_normal/tests/*.s
for file in Test/Tests_normal/tests/*
do
    if test -f $file
    then
        echo $file 是文件
        ./parser $file $file.s
    fi
    if test -d $file
    then
        echo $file 是目录
    fi
done
