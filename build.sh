#!/bin/bash

docker build --build-arg HTTP_PROXY=http://proxy-emea.intra.coriant.com:81 --build-arg HTTPS_PROXY=https://proxy-emea.intra.coriant.com:81 -t vveloso/jmxtrans:latest ./image
