FROM java:8-jdk-alpine

USER root

WORKDIR .

ADD target/registration-service-0.0.1.jar registration-service.jar

EXPOSE 8080

# JAVA_OPTS is variable containing all java options that a microservice will need.
# Such as Memory allocation, New Relics configurations, etc.
CMD  java  $JAVA_OPTS -jar registration-service.jar
