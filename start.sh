#!/bin/bash

docker run --name jmxtrans -v /c/Users/vveloso/jmxtrans.docker/log:/opt/jmxtrans/log -v /c/Users/vveloso/jmxtrans.docker/conf:/opt/jmxtrans/conf -d vveloso/jmxtrans $1
