FROM java:jre

ARG HTTP_PROXY

RUN set -x \
    && mkdir /opt/jmxtrans /opt/jmxtrans/conf /opt/jmxtrans/log /opt/jmxtrans/ext \
	&& export http_proxy=$HTTP_PROXY \
    && apt-get update -qq \
    && apt-get install -qq --no-install-recommends curl ca-certificates \
    && curl -L -o /opt/jmxtrans/jmxtrans-all.jar http://central.maven.org/maven2/org/jmxtrans/jmxtrans/254/jmxtrans-254-all.jar \
	&& curl -L -o /opt/jmxtrans/ext/wildfly-client.jar http://central.maven.org/maven2/org/wildfly/wildfly-client-all/10.0.0.Final/wildfly-client-all-10.0.0.Final.jar \
	&& curl -L -o /opt/jmxtrans/ext/log4j.jar http://central.maven.org/maven2/log4j/log4j/1.2.17/log4j-1.2.17.jar \
	&& curl -L -o /opt/jmxtrans/ext/slf4j-log4j12.jar http://central.maven.org/maven2/org/slf4j/slf4j-log4j12/1.7.21/slf4j-log4j12-1.7.21.jar \
    && apt-get remove -qq --auto-remove curl \
    && apt-get clean -qq \
    && rm -rf /var/lib/apt/lists/*

VOLUME /opt/jmxtrans/conf 
VOLUME /opt/jmxtrans/log

COPY ./entrypoint.sh /entrypoint.sh
RUN chmod a+rx /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["jmxtrans"]
