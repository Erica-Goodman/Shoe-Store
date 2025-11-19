#FROM ubuntu:latest
FROM eclipse-temurin:21-jre
LABEL authors="erica"

#ENTRYPOINT ["top", "-b"]

# specify Working directory
WORKDIR /app

#Maven -> Lifecycle => clean
#Maven -> Lifecycle => package

#copy the spring boot jar into the image
COPY target/PROG3350_Assignment3_API-0.0.1-SNAPSHOT.jar app.jar
#COPY target/*.jar /app/app.jar

EXPOSE 8080

#start the spring boot app
ENTRYPOINT ["java", "-jar", "app.jar"]
#ENTRYPOINT ["java", "-jar", "app/app.jar"]

#docker build -t dockerlecture:latest .
#docker run -p 8080:8080 dockerlecture