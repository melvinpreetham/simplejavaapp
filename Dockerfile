# Use a base image with JDK installed
FROM openjdk:17-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the compiled JAR file into the container
COPY target/simplejavaapp.jar /app/simplejavaapp.jar

# Expose the port your application runs on (if applicable)
EXPOSE 8080

# Command to run the application
CMD ["java", "-jar", "simplejavaapp.jar"]
