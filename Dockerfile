FROM openjdk:8
COPY OnlineShoppingRest-0.0.1-SNAPSHOT.jar /online-shopping-cart-docker.jar
RUN cp -r /OnlineShoppingRest-0.0.1-SNAPSHOT.jar/* / && rm -r /online-shopping-cart-docker.jar
EXPOSE 8982
ENTRYPOINT ["java","-jar","online-shopping-cart-docker.jar"]
