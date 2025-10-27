FROM openjdk:17-jdk-slim
COPY build/libs/spring-boot-ci-cd-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]
