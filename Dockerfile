FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install openjdk-8-jdk -y

#create application directory

RUN mkdir -p /apps
WORKDIR /apps
COPY axess.jar /apps/
EXPOSE 8081
ENTRYPOINT ["sh","-c","java -jar /apps/axess.jar"]


