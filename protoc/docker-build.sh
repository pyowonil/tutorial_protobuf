#!/bin/bash

docker build -f Dockerfile.centos -t protobuf:centos-7.3.1611-cpp-3.11.2 .
docker build -f Dockerfile.ubuntu -t protobuf:ubuntu-18.04-cpp-3.11.2 .
