FROM maven:3.6.3-jdk-8 AS builder
WORKDIR /app


COPY pom.xml .
RUN mvn dependency:go-offline -B


COPY src ./src
RUN mvn package -DskipTests


FROM tomcat:8.5-jdk8

COPY --from=builder /app/target/*.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080


CMD ["catalina.sh", "run"]

# docker build -t java-servlet .
# docker run -p 8080:8080 java-servlet
