#!/bin/bash

for file in /usr/local/apache/conf/extra/*;                                                          
    do
    if test -f $file
    then
        grep "1" $file > /dev/null;
        if [ $? -eq 0 ];
        then
            echo $file
            echo "Found!"
        fi;
    fi
done

