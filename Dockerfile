# Use the latest OpenJDK image as the base image
FROM openjdk:latest

# Copy the JAR file from the host machine to the Docker image
COPY /home/ubuntu/jenkins/workspace/jfrog/jenkins-test-1.0.jar /jenkins-test-1.0.jar

# Set the working directory
WORKDIR /

# Define the command to run the Java application when the container starts
ENTRYPOINT ["java", "-jar", "/jenkins-test-1.0.jar"]
