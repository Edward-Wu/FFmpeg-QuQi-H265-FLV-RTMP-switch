#!/bin/bash

pwd=`pwd`
echo $pwd

ret=`echo $LD_LIBRARY_PATH | grep $pwd`
echo $ret
if [ $ret == "" ] then
    echo '$LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$pwd > ~/.bash_profile'
    echo 'export $LD_LIBRARY_PATH > ~/.bash_profile'
    `source ~/.bash_profile`
else
    echo "$pwd is in LD_LIBRARY_PATH."
fi

