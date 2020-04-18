FROM openjdk:7
RUN mkdir /app
WORKDIR /app
COPY DevOps.java /app
RUN ls
#RUN echo "public class DevOps { public static void main (String args[]){System.out.println('C');}}" > DevOps.java
#RUN pwd
RUN javac DevOps.java
RUN java DevOps