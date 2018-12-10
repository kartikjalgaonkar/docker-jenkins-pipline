FROM openjdk:8
RUN chown -R ubuntu:ubuntu /home/ubuntu/.ssh
RUN chmod -R 700 /home/ubuntu/.ssh
ADD target/online-shopping-cart-docker.jar online-shopping-cart-docker.jar
EXPOSE 8982
ENTRYPOINT ["java","-jar","online-shopping-cart-docker.jar"]
