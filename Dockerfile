FROM java:8

ADD target/kafka-spark-1.0.jar   /app.jar

WORKDIR /

RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime


ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","-Xms1024m","-Xmx1024m","app.jar"]