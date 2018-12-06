FROM openjdk:8
ADD onlineshoppingrest/target/online-shopping-cart-docker.jar /var/lib/docker/tmp/docker-builder749758965/onlineshoppingrest/target/online-shopping-cart-docker.jar
EXPOSE 8982
ENTRYPOINT ["java","-jar","online-shopping-cart-docker.jar"]
