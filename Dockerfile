FROM openjdk:8-jdk-alpine
VOLUME /tmp
ARG JAR_FILE=target/spring-petclinic-2.3.1.BUILD-SNAPSHOT.jar
COPY ${JAR_FILE} spring-petclinic-2.3.1.BUILD-SNAPSHOT.jar
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Dserver.port=8080 -jar spring-petclinic-2.3.1.BUILD-SNAPSHOT.jar"]
