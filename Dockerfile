FROM amazoncorretto:17
WORKDIR /
COPY SpringBootExecutableJarFileDemo-0.0.1-SNAPSHOT.jar SpringBootExecutableJarFileDemo-0.0.1-SNAPSHOT.jar
EXPOSE 8090
CMD java -jar SpringBootExecutableJarFileDemo-0.0.1-SNAPSHOT.jar
