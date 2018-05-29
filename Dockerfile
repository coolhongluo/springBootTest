FROM java:8u111-jre-alpine

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone

WORKDIR /home/apps/
ADD ./target/gs-spring-boot-0.1.0.jar gs-spring-boot-0.1.0.jar
ENTRYPOINT [ "sh", "-c", "java -jar gs-spring-boot-0.1.0.jar" ]
