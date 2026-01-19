FROM eclipse-temurin:17-jdk-alpine

# Set working directory
WORKDIR /usr/src/app

# Copy jar from target folder
COPY target/*.jar app.jar

# Expose application port
EXPOSE 8080

# Run application
ENTRYPOINT ["java", "-jar", "app.jar"]
