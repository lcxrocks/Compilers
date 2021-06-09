#!/bin/bash
for file in compilers-tests-L3/Tests_normal/tests/*
do
    if test -f $file
    then
        echo $file 是文件
        rm $file.out 
        ./parser $file $file.ir
    fi
    if test -d $file
    then
        echo $file 是目录
    fi
done
