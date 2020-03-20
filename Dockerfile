FROM maven:3.6.3 AS build
COPY src /usr/app/src
COPY pom.xml /usr/app
RUN mvn -f /usr/app/pom.xml clean install

FROM adoptopenjdk/openjdk11:jdk-11.0.6_10-alpine
COPY --from=build /usr/app/target/demo.jar /usr/local/lib/demo.jar
WORKDIR /usr/app

ENTRYPOINT ["java","-jar","/usr/local/lib/demo.jar"]