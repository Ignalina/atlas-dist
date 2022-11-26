from eclipse-temurin:8u352-b08-jdk-alpine
from amazoncorretto:8-alpine3.15

RUN apk update && apk add wget git python2
RUN git clone https://github.com/apache/atlas.git && wget https://dlcdn.apache.org/maven/maven-3/3.8.6/binaries/apache-maven-3.8.6-bin.tar.gz  && tar -zxf apache-maven-3.8.6-bin.tar.gz
RUN cd atlas && ../apache-maven-3.8.6/bin/mvn -Dmaven.wagon.http.ssl.ignore.validity.dates=true -DskipTests clean package -Pdist,embedded-hbase-solr
