#!/bin/bash

docker run --rm -v `pwd`/cpp:/root/cpp -w /root/cpp -e PKG_CONFIG_PATH=/usr/local/lib/pkgconfig -e LD_LIBRARY_PATH=/usr/local/lib -it protobuf:centos-7.3.1611-cpp-3.11.2 bash
