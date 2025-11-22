FROM amazoncorretto:17
WORKDIR /
COPY /var/lib/jenkins/workspace/build/target/SpringBootExecutableJarFileDemo-0.0.1-SNAPSHOT.jar SpringBootExecutableJarFileDemo-0.0.1-SNAPSHOT.jar
EXPOSE 8090
CMD java -jar SpringBootExecutableJarFileDemo-0.0.1-SNAPSHOT.jar
