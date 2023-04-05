FROM maven:3.8.3-openjdk-11
RUN apt-get update        
RUN apt-get install -y git
RUN mkdir home/
RUN cd home/
RUN git clone https://github.com/BharadwajaC/karate-demo.git
RUN chmod -R 777 karate-demo
WORKDIR /home/karate-demo
RUN mvn -v
RUN mvn test