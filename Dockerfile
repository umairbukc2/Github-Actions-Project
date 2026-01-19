# Use Eclipse Temurin JDK 17 Alpine image
FROM eclipse-temurin:17-jdk-alpine

# Set working directory
WORKDIR /usr/src/app

# Copy the JAR artifact downloaded from GitHub Actions
COPY app/*.jar app.jar

# Expose the application port
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
