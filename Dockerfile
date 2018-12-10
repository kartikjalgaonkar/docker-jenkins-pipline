FROM openjdk:8
ADD  target/online-shopping-cart-docker.jar /online-shopping-cart-docker.jar
EXPOSE 8982
ENTRYPOINT ["java","-jar","online-shopping-cart-docker.jar"]
https://jamalshahverdiev.wordpress.com/2018/02/06/jenkins-build-artifacts-create-docker-image-and-deploy-over-ssh/
