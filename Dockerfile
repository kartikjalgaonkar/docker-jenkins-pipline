FROM openjdk:8
ADD  target/online-shopping-cart-docker.jar /online-shopping-cart-docker.jar
EXPOSE 8982
ENTRYPOINT ["java","-jar","online-shopping-cart-docker.jar"]
https://springframework.guru/running-spring-boot-in-a-docker-container/
