# Pull base image
FROM openjdk:8-jdk-alpine

# Maintainer
MAINTAINER "eloimendes@gmail.com"
# Set Environment properties
#ENV JAVA_OPTS=-Denvironment=production
EXPOSE 8080

# Copy war file to tomcat webapps folder
COPY gs-spring-boot-0.1.0.jar /opt/app.jar

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/opt/app.jar"]

