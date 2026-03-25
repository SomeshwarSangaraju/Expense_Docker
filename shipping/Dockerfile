FROM maven:5.42
# RUN USERADD Siva
WORKDIR /opt/server
COPY src ./src
COPY pom.xml .
RUN mvn clean package 
RUN mv target/shipping-1.0.jar shipping.jar 
ENV CART_ENDPOINT="cart:8080" \
    DB_HOST="mysql" 
# USER Siva
CMD ["java", "-jar", "shipping.jar"]
