FROM maven:latest

RUN mkdir /test-docker

WORKDIR /test-docker

COPY . .

EXPOSE 8080

CMD ["mvn", "exec:java"]