FROM adoptopenjdk/openjdk11:alpine-jre

# Refer to Maven build -> finalName

# cd /opt/app
WORKDIR /opt/app


# cp target/spring-boot-web.jar /opt/app/app.jar
COPY /home/runner/work/testCI-CD/testCI-CD/target/demo-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8080
# java -jar /opt/app/app.jar
ENTRYPOINT ["java","-jar","app.jar"]