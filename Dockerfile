FROM openjdk:8-jdk-alpine
ENV SA_LOGIC_API_URL http://localhost:5000
ADD target/spring-petclinic-2.7.0-SNAPSHOT.jar /
EXPOSE 8080
CMD ["java", "-jar", "sspring-petclinic-2.7.0-SNAPSHOT.jar", "--sa.logic.api.url=${SA_LOGIC_API_URL}"]