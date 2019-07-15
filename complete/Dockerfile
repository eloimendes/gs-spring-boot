# Pull base image
FROM openjdk:8-jdk-alpine

# Maintainer
MAINTAINER "eloimendes@gmail.com"

ARG JAR_FILE
# Set Environment properties
#ENV JAVA_OPTS=-Denvironment=production

# Copy war file to tomcat webapps folder
COPY ${JAR_FILE} /opt/app.jar

EXPOSE 8080

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/opt/app.jar"]

