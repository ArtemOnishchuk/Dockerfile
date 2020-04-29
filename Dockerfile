FROM maven
ADD graph /usr/src/graph
WORKDIR /usr/src/graph
RUN mvn package
EXPOSE 80
WORKDIR /usr/src/graph/target
CMD java -jar graph*
