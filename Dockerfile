from eclipse-temurin:8u352-b08-jdk-alpine

RUN apk update && apk add wget git --no-cache python2
RUN wget https://dlcdn.apache.org/maven/maven-3/3.8.6/binaries/apache-maven-3.8.6-bin.tar.gz  && tar -zxf apache-maven-3.8.6-bin.tar.gz
RUN apache-maven-3.8.6/bin/mvn -Dmaven.wagon.http.ssl.ignore.validity.dates=true -DskipTests clean package -Pdist,embedded-hbase-solr
