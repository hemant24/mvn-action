# Start with a lightweight base image
FROM  openjdk:21-jdk-slim
#COPY --from=build /app/source/target/*.jar /app/app.jar
# Install Maven
RUN apt-get update && \
    apt-get install -y maven && \
    rm -rf /var/lib/apt/lists/*

# Set JAVA_HOME environment variable
ENV JAVA_HOME=/usr/local/openjdk-21
ENV PATH=$JAVA_HOME/bin:$PATH

# Command to list contents of the working directory
# CMD ["mvn", "clean", "install"]
#CMD ["mvn", "-v"]
#CMD ["mvn", "help:evaluate", "-Dexpression=settings.localRepository", "-q", "-DforceStdout"]
# CMD ["/bin/sh", "-c", "echo $HOME"]
# CMD ["/bin/sh", "-c", "mvn -Dmaven.repo.local=/github/home/.m2/repository clean install"]
CMD ["/bin/sh", "ls /github/home/.m2/repository"]
