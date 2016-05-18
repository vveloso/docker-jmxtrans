JMXTrans with support for:

* JMX over HTTP Remoting using the Wildfly 10 client jars.
* Structured document writing to Elasticsearch,

Exposes volumes to the host for configuration and logging.

Map `/opt/jmxtrans/conf` to a location containing JMXTrans JSON configuration files and `/opt/jmxtrans/log` to a host folder where log files can be stored.

Sample execution command:

```
docker run --name jmxtrans -v /c/Users/jmxtrans.docker/log:/opt/jmxtrans/log -v /c/Users/jmxtrans.docker/conf:/opt/jmxtrans/conf vveloso/jmxtrans
```
