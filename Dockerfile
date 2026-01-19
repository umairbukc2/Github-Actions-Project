FROM eclipse-temurin:17-jdk-alpine

# Expose port
EXPOSE 8080

# Set app home and working directory
ENV APP_HOME=/usr/src/app
WORKDIR $APP_HOME

# Copy the JAR directly from context root
COPY *.jar app.jar

# Command to run the app
CMD ["java", "-jar", "app.jar"]
