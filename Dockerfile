# ---------- Stage 1: Build the application ----------
FROM gradle:8.5-jdk17-alpine AS build
COPY --chown=gradle:gradle . /home/gradle/project
WORKDIR /home/gradle/project

# Build the app using the Gradle wrapper
RUN ./gradlew build --no-daemon

# ---------- Stage 2: Run the application ----------
FROM eclipse-temurin:17-jdk-alpine
WORKDIR /app

# Copy the fat JAR from the build stage
COPY --from=build /home/gradle/project/build/libs/*.jar app.jar

EXPOSE 9080
ENTRYPOINT ["java", "-jar", "/app/app.jar"]