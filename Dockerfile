#FROM java:8
FROM ubuntu:14.04
ENV FOO bar

RUN apt-get  update
RUN apt-get install -y vim
RUN apt-get install -y openjdk-7-jdk

COPY src /home/root/javahelloworld/src
WORKDIR /home/root/javahelloworld
RUN mkdir bin
RUN javac -d bin src/HelloWorld.java
ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]
