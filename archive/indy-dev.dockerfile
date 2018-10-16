FROM ubuntu:16.04

RUN useradd -ms /bin/bash indy

# Install environment
RUN apt-get update -y && apt-get install -y \
    wget \
    python3.5 \
    python3-pip \
    python-setuptools \
    apt-transport-https \
    ca-certificates \
    software-properties-common

WORKDIR /home/indy

RUN pip3 install -U \
    pip \
    setuptools \
    python3-indy==1.6.2-dev-720 \
    asyncio

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 68DB5E88 \
    && add-apt-repository "deb https://repo.sovrin.org/sdk/deb xenial master" \
    && apt-get update \
    && apt-get install -y \
    libindy=1.6.2~720

USER indy

EXPOSE 8080