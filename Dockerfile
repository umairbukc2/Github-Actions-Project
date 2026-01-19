FROM eclipse-temurin:17-jdk-alpine

EXPOSE 8080

ENV APP_HOME=/usr/src/app
WORKDIR $APP_HOME

# Copy the JAR from build context root
COPY *.jar app.jar

# Command to run the JAR
CMD ["java", "-jar", "app.jar"]
