# Base image
FROM java 20.0.1
EXPOSE 8080
WORKDIR /app

# Copy jar file to container
ADD target/JavaJenkins.jar JavaJenkins.jar


# Set entrypoint to run the jar file
ENTRYPOINT ["java", "-jar", "/JavaJenkins.jar"]
