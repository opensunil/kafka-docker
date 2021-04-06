FROM arm64v8/ubuntu
MAINTAINER Sunil Varghese

# Fix timezone issue
#ENV TZ="America/New_York"
#RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
#RUN date

RUN apt update && DEBIAN_FRONTEND=noninteractive apt install -y --no-install-recommends \
    sudo \
    nano \
    git \
    default-jre \
    default-jdk \
    curl

# Fix timezone issue
ENV TZ="America/New_York"
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN date

#RUN apt-get update
RUN groupadd kafka
RUN useradd -ms /bin/bash -g kafka kafka
RUN usermod -aG sudo kafka
RUN grep -Po '^sudo.+:\K.*$' /etc/group
USER kafka
RUN mkdir /tmp/kafka
WORKDIR /tmp/kafka
#RUN rm -f kafka.tgz
#RUN curl -X GET -o kafka.tgz -L "https://www.apache.org/dyn/closer.cgi?path=/kafka/2.7.0/kafka_2.13-2.7.0.tgz"
#RUN curl -X GET -o kafka.tgz -L "https://apache.claz.org/kafka/2.7.0/kafka_2.13-2.7.0.tgz"
RUN curl -X GET -o kafka.tgz -L "https://ftp.wayne.edu/apache/kafka/2.7.0/kafka_2.13-2.7.0.tgz"
RUN tar -xvzf kafka.tgz --strip 1
RUN rm -f kafka.tgz
EXPOSE 2181 2888 3888 8080