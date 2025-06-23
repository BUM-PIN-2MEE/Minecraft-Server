FROM eclipse-temurin:21-jdk-jammy

WORKDIR /server
COPY . .

EXPOSE 25565

CMD ["java", "-Xmx768M", "-Xms384M", "-XX:+UseG1GC", "-XX:+UnlockExperimentalVMOptions", "-XX:G1NewSizePercent=20", "-XX:G1MaxNewSizePercent=60", "-XX:G1HeapRegionSize=16M", "-XX:G1ReservePercent=15", "-XX:InitiatingHeapOccupancyPercent=20", "-jar", "server.jar", "nogui"]
