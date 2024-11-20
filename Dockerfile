# Start with a lightweight base image
FROM  openjdk:21-jdk-slim
#COPY --from=build /app/source/target/*.jar /app/app.jar
# Install Maven
RUN apt-get update && \
    apt-get install -y maven && \
    rm -rf /var/lib/apt/lists/*

# Set JAVA_HOME environment variable
ENV JAVA_HOME=/usr/lib/jvm/java-21-openjdk-amd64
ENV PATH=$JAVA_HOME/bin:$PATH

# Command to list contents of the working directory
CMD ["mvn", "clean", "install"]
