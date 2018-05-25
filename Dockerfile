FROM ubuntu
MAINTAINER ionut.pirva@gmail.com

LABEL name="script server"

RUN \
        apt-get update && \
        apt-get -y upgrade && \
        apt-get -y install python3 \
        python3-pip \
        vim \
        curl && \
        pip3 install boto3 requests dnspython && \
        rm -rf /var/lib/apt/lists/*

ENV HOME /root
WORKDIR /root
CMD ["bash"]
