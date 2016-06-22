FROM java:openjdk-8-jre-alpine

ARG HTTP_PROXY
ARG HTTPS_PROXY

RUN set -x \
	&& export http_proxy=$HTTP_PROXY \
	&& export https_proxy=$HTTPS_PROXY \
	&& apk --update add libc6-compat libstdc++ curl ca-certificates bash  \
	&& mkdir /opt /opt/jmxtrans /opt/jmxtrans/conf /opt/jmxtrans/log \
	&& curl -L -o /opt/jmxtrans/jmxtrans-all.jar http://central.maven.org/maven2/org/jmxtrans/jmxtrans/256/jmxtrans-256-all.jar \
	&& curl -L -o /opt/jmxtrans/log4j.jar http://central.maven.org/maven2/log4j/log4j/1.2.17/log4j-1.2.17.jar \
	&& curl -L -o /opt/jmxtrans/jmxtrans-output-elastic.jar http://repo1.maven.org/maven2/com/github/vveloso/jmxtrans-output-elastic-aggregate/1.4/jmxtrans-output-elastic-aggregate-1.4-full-jar.jar
	
ADD ./wildfly-ejb-client-10.0.0.Final.01.jar /opt/jmxtrans/wildfly-ejb-client.jar

VOLUME /opt/jmxtrans/conf 
VOLUME /opt/jmxtrans/log

COPY ./entrypoint.sh /entrypoint.sh
RUN chmod a+rx /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["jmxtrans"]
