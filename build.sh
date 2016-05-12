#!/bin/bash

docker build --build-arg HTTP_PROXY=http://proxy-emea.intra.coriant.com:81  -t vveloso/jmxtrans:latest ./image
