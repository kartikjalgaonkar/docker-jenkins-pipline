FROM openjdk:8
COPY C:/WINDOWS/system32/config/systemprofile/.m2/repository/org/yash/OnlineShoppingRest/0.0.1-SNAPSHOT/OnlineShoppingRest-0.0.1-SNAPSHOT.jar online-shopping-cart-docker.jar
EXPOSE 8982
ENTRYPOINT ["java","-jar","online-shopping-cart-docker.jar"]
