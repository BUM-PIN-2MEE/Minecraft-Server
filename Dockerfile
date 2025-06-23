# Use OpenJDK 17 base image (or 21+ if your server needs it)
FROM eclipse-temurin:21-jdk

# Set working directory
WORKDIR /app

# Copy everything into the container
COPY . .

# Accept the EULA
RUN echo "eula=true" > eula.txt

# Expose default Minecraft server port
EXPOSE 25565

# Run the server
CMD ["java", "-Xmx2G", "-Xms2G", "-jar", "server.jar", "nogui"]
