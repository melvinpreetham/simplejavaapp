# Use an OpenJDK 17 image
FROM openjdk:17-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the jar file into the container
COPY target/SimpleJavaApp-1.0-SNAPSHOT.jar simplejavaapp.jar

# Expose the port the app runs on
EXPOSE 8080

# Run the jar file
CMD ["java", "-jar", "simplejavaapp.jar"]
