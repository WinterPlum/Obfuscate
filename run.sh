#!/bin/bash

APPDIR=/home/ypwang/Dataset/Android/atest
ANDROID_SDK=$ANDROID_HOME/platforms/

for i in $(find $APPDIR -iname '*.apk' ); 
do
    echo "Analyzing..... $i"
    ant main -Dapk=$i -Dsdk=$ANDROID_SDK
done

