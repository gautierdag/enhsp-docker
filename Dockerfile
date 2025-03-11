# Use an official OpenJDK 15 image as the base
FROM sapmachine:17

ENV JAVA_TOOL_OPTIONS="-Dfile.encoding=UTF8"

# Install git and other necessary tools
RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get install -y git && \
    git clone https://gitlab.com/enricos83/ENHSP-Public.git /app && \
    cd /app && ./compile

# Set working directory
WORKDIR /app

# Set the entrypoint to run the planner
ENTRYPOINT ["java", "-jar", "enhsp-dist/enhsp.jar"]