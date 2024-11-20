# Start with a lightweight base image
FROM  openjdk:21-jdk-slim
#COPY --from=build /app/source/target/*.jar /app/app.jar
# Install Maven
RUN apt-get update && \
    apt-get install -y maven && \
    rm -rf /var/lib/apt/lists/*

# Command to list contents of the working directory
CMD ["sh", "-c", "echo 'Current working directory contents:' && ls -la"]
