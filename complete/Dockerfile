FROM maven:3.5.2-jdk-8-alpine AS MAVEN_TOOL_CHAIN
WORKDIR /build
COPY pom.xml .
RUN mvn dependency:go-offline

COPY src /build/src/
RUN mvn package
#FROM tomcat:9.0-jre8-alpine

#HEALTHCHECK --interval=1m --timeout=3s CMD wget --quiet --tries=1 --spider http://localhost:8080/wizard/ || exit 1

# Pull base image
FROM openjdk:8-jdk-alpine
MAINTAINER "eloimendes@gmail.com"

COPY --from=MAVEN_TOOL_CHAIN /build/target/gs-spring-boot*.jar /opt/app.jar

# Maintainer
# Set Environment properties
#ENV JAVA_OPTS=-Denvironment=production
EXPOSE 8080

# Copy war file to tomcat webapps folder
#COPY gs-spring-boot-0.1.0.jar /opt/app.jar

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/opt/app.jar"]

