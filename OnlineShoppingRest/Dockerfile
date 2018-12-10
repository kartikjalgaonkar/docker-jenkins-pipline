FROM openjdk:8
VOLUME /var/lib/docker/tmp
ADD target/online-shopping-cart-docker.jar online-shopping-cart-docker.jar
EXPOSE 8982
ENTRYPOINT ["java","-jar","online-shopping-cart-docker.jar"]
