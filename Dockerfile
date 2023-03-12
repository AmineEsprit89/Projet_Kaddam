FROM openjdk:8-jdk-alpine
EXPOSE 9090
# ARG JAR_FILE=target/*.jar
ADD target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
