FROM openjdk:17-jdk-slim
COPY build/libs/SpringBoot_cicd-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]

## Stage 1: build
#FROM maven:3.9.4-eclipse-temurin-17 AS build
#WORKDIR /workspace
#COPY pom.xml .
#COPY src ./src
#RUN mvn -B -DskipTests package
#
## Stage 2: runtime
#FROM eclipse-temurin:17-jre-alpine
#ARG JAR_FILE=/workspace/target/spring-boot-ci-cd-0.0.1-SNAPSHOT.jar
#COPY --from=build ${JAR_FILE} /app/app.jar
#EXPOSE 8080
#ENTRYPOINT ["java","-jar","/app/app.jar"]

