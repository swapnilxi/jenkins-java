# Base image
FROM openjdk:17
EXPOSE 8080


# Copy jar file to container
ADD target/javajenkins.jar javajenkins.jar


# Set entrypoint to run the jar file
ENTRYPOINT ["java", "-jar", "/javajenkins.jar"]
