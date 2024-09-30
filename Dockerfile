# Use an OpenJDK 17 image
FROM openjdk:17-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the jar file into the container
COPY target/SimpleJavaApp-1.0-SNAPSHOT.jar simplejavaapp.jar

# Expose a different port
EXPOSE 8081

# Run the jar file
CMD ["java", "-jar", "simplejavaapp.jar"]
