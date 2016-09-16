FROM java:7

ADD src /home/root/javahelloworld/src
RUN javac -d bin /home/root/javahelloworld/src/HelloWorld.java
#ENTRYPOINT ["java", "cp", "bin","HelloWorld"]
WORKDIR /home/root/javahelloworld
RUN mkdir bin
ENV JAVA_HOME /usr/bin/java
RUN mkdir -p /test/data && echo "test" > /test/data/blub
VOLUME ["/test/data"]


#RUN apt-get update
#RUN apt-get install -y wget vim
#ENTRYPOINT ["ping", "-c","20"]
#CMD ["127.0.0.1"]
