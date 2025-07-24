FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

# Update & install system dependencies
RUN apt-get update && apt-get install -y \
    curl \
    wget \
    git \
    unzip \
    nano \
    python3 \
    python3-pip \
    r-base \
    build-essential \
    zlib1g-dev \
    libbz2-dev \
    liblzma-dev \
    libcurl4-openssl-dev \
    libssl-dev \
    openjdk-11-jdk \
    docker.io \
    samtools \
    bcftools \
    && apt-get clean

# Install NanoPlot (pip)
RUN pip3 install NanoPlot

# Install Porechop from source
RUN cd /opt && \
    git clone https://github.com/rrwick/Porechop.git && \
    cd Porechop && \
    python3 setup.py install

# Install Minimap2 from source
RUN cd /opt && \
    git clone https://github.com/lh3/minimap2.git && \
    cd minimap2 && make && \
    ln -s /opt/minimap2/minimap2 /usr/local/bin/minimap2

# Set working directory
WORKDIR /workspace


