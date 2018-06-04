FROM services.lab5.example.com:5000/redhat-openjdk-18/openjdk18-openshift:latest
#FROM fabric8/java-jboss-openjdk8-jdk:1.3.1

ENV JAVA_APP_JAR hola-swarm.jar
ENV AB_ENABLED off
ENV JAVA_OPTIONS -Xmx512m

EXPOSE 8080

ADD target/hola-swarm.jar /deployments/
