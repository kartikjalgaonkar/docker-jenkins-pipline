FROM openjdk:8
VOLUME /tmp
ADD build/libs/online-shopping-cart-docker.jar /online-shopping-cart-docker.jar
EXPOSE 8982
ENTRYPOINT ["java","-jar","online-shopping-cart-docker.jar"]
