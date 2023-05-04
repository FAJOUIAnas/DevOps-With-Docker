FROM openjdk:8

EXPOSE 8080

WORKDIR /usr/src/app

COPY . .

#to fix the Windows problem
RUN sed -i 's/\r$//' mvnw

RUN ./mvnw package

CMD ["java", "-jar", "./target/docker-example-1.1.3.jar"]