FROM openjdk:14-slim
RUN ls -lh
COPY ./staging/hello-world-latest.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","app.jar"]