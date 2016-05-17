# docker-jmxtrans

Docker image for JMXTrans with support for more JMX protocols and output writers.

Includes:

* [Wildfly](http://wildfly.org/) 10 client, thus supporting its additional remoting protocols for JMX.
* [Structured Elasticsearch writer](https://github.com/vveloso/jmxtrans-output-elastic-aggregate), which aggregates query result attributes in one structured document for Elasticsearch.
* [SLF4J](http://www.slf4j.org/) and [Log4j](http://logging.apache.org/log4j) dependencies for generating log files.
