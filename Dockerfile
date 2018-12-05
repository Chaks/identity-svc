#FROM alpine as HOST_IP
#RUN ip -4 route list match 0/0 | awk '{print $3 " host.docker.internal"}' >> /tmp/hosts

FROM openliberty/open-liberty:kernel-java8-openj9

ADD https://github.com/WASdev/sample.opentracing.zipkintracer/releases/download/1.1.1/liberty-opentracing-zipkintracer-1.1.1-sample.zip /opt/ol/wlp/usr
RUN cd /opt/ol/wlp/usr && unzip liberty-opentracing-zipkintracer-1.1.1-sample.zip && rm -rf liberty-opentracing-zipkintracer-1.1.1-sample.zip

COPY src/main/liberty/config/bootstrap.properties /config
COPY src/main/liberty/config/server.xml /config

ADD target/identity-svc-1.0-SNAPSHOT.war /config