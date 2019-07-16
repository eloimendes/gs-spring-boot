FROM openjdk:8-jdk-alpine
MAINTAINER "eloimendes@gmail.com"
COPY target/gs-spring-boot*.jar /opt/app.jar
EXPOSE 8080
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/opt/app.jar"]

