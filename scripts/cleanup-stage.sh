#!/usr/bin/bash


DELETES="
VERSION.dep
info_macros.cmake
CPackConfig.cmake
CPackSourceConfig.cmake
CMakeCache.txt
cmake_install.cmake
Makefile
include
CMakeFiles
mysql-secret-store
modules
mysqlshdk
res
python
src
samples
"

for del in $DELETES; do
    if [ -n "$del" ]; then
	echo "Deleting $del"
        rm -rf $del
    fi
done
