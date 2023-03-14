FROM openjdk:11-slim
EXPOSE 8520

ENV JAVA_OPTS=""

ADD ./target/abc123-schema-0.0.1.jar app.jar

RUN sh -c 'touch /app.jar'

CMD [ "java", "-Duser.timezone=GMT-4", "-jar" ,"app.jar" ]
