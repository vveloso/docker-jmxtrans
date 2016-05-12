#!/bin/bash
set -e

if [ "$1" == "jmxtrans" ]; then
  exec java -Djava.ext.dirs=/opt/jmxtrans/ext -Djmxtrans.log.dir='/opt/jmxtrans/log' -Djmxtrans.log.level=INFO -jar /opt/jmxtrans/jmxtrans-all.jar -j /opt/jmxtrans/conf/
else
  exec "$@"
fi
