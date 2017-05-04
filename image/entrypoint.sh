#!/bin/bash
set -e

if [ "$1" == "jmxtrans" ]; then
  exec java -classpath /opt/jmxtrans/wildfly-ejb-client.jar:/opt/jmxtrans/jmxtrans-output-elastic.jar:/opt/jmxtrans/jmxtrans-all.jar -Djmxtrans.log.dir='/opt/jmxtrans/log' -Djmxtrans.log.level=INFO com.googlecode.jmxtrans.JmxTransformer -j /opt/jmxtrans/conf/
else
  exec "$@"
fi
