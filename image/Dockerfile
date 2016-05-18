FROM java:openjdk-8-jre-alpine

ARG HTTP_PROXY
ARG HTTPS_PROXY

RUN set -x \
	&& export http_proxy=$HTTP_PROXY \
	&& export https_proxy=$HTTPS_PROXY \
	&& apk --update add curl ca-certificates bash \
	&& mkdir /opt /opt/jmxtrans /opt/jmxtrans/conf /opt/jmxtrans/log /opt/jmxtrans/ext \
	&& curl -L -o /opt/jmxtrans/jmxtrans-all.jar http://central.maven.org/maven2/org/jmxtrans/jmxtrans/254/jmxtrans-254-all.jar \
	&& curl -L -o /opt/jmxtrans/ext/wildfly-client.jar http://central.maven.org/maven2/org/wildfly/wildfly-client-all/10.0.0.Final/wildfly-client-all-10.0.0.Final.jar \
	&& curl -L -o /opt/jmxtrans/ext/log4j.jar http://central.maven.org/maven2/log4j/log4j/1.2.17/log4j-1.2.17.jar \
	&& curl -L -o /opt/jmxtrans/ext/slf4j-log4j12.jar http://central.maven.org/maven2/org/slf4j/slf4j-log4j12/1.7.21/slf4j-log4j12-1.7.21.jar \
	&& curl -L -o /opt/jmxtrans/ext/jmxtrans-output-elastic-aggregate-1.3.jar http://repo1.maven.org/maven2/com/github/vveloso/jmxtrans-output-elastic-aggregate/1.3/jmxtrans-output-elastic-aggregate-1.3-jar-with-dependencies.jar

VOLUME /opt/jmxtrans/conf 
VOLUME /opt/jmxtrans/log

COPY ./entrypoint.sh /entrypoint.sh
RUN chmod a+rx /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["jmxtrans"]
