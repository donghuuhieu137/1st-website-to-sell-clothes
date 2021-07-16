FROM maven:latest

COPY . .

EXPOSE 8080

CMD ["mvn", "exec:java"]