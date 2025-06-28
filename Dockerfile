# Use a lightweight JDK base image
FROM eclipse-temurin:17-jdk-alpine

# Create a directory for the app
WORKDIR /app

# Copy the fat JAR from your build output
COPY build/libs/*.jar app.jar

# Expose the default port your app runs on
EXPOSE 9080

# Run the Spring Boot app
ENTRYPOINT ["java","-jar","/app/app.jar"]