# Use Java 17 JRE for runtime
FROM eclipse-temurin:17-jre

WORKDIR /app

# Copy the .jar file from local project (adjust the name as needed)
COPY target/my-java-app-1.0.jar app.jar

# Start the Java application
ENTRYPOINT ["java", "-jar", "app.jar"]
