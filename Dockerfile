# source: https://gist.github.com/liemle3893/025624fc02dbecc0e8fd99a40a4ae94c
FROM gradle:4.6-jdk8-alpine as compile
COPY . /home/source/java
WORKDIR /home/source/java
# Default gradle user is `gradle`. We need to add permission on working directory for gradle to build.
USER root
RUN chown -R gradle /home/source/java
USER gradle
COPY . .
RUN ./gradlew build

# source: https://spring.io/guides/gs/spring-boot-docker/
FROM openjdk:8-jre-alpine
RUN addgroup -S spring && adduser -S spring -G spring
USER spring:spring
COPY --from=0 "/home/source/java/build/libs/lab0-twitter-rest-2021.jar" /
ENTRYPOINT [ "java", "-jar", "/lab0-twitter-rest-2021.jar"]
