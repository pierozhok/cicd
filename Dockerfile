FROM maven:3.6.0-jdk-11-slim AS build
WORKDIR /app
COPY ./ /app
RUN mvn -f /app/pom.xml clean package

FROM openjdk:11-jre-slim
COPY --from=build /app/target/my-app-1.0-SNAPSHOT.jar /usr/local/lib/app.jar
ENTRYPOINT ["java","-jar","/usr/local/lib/app.jar"]

