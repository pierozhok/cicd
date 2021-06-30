FROM java:8-jdk-alpine
WORKDIR /app
COPY ./ /app
RUN ["javac", "App.java"]
CMD ["java", "-classpath", "/app", "com.mycompany.app.App"]
