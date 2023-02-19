FROM openjdk:8-jdk-alpine
EXPOSE 8080
# ARG JAR_FILE=target/*.jar
ADD target/kaddam.jar kaddam.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/kaddam.jar"]
