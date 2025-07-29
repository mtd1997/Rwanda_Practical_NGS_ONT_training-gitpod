FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

# Install system packages
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
    cmake \
    libboost-all-dev \
    && apt-get clean

# Install Python packages
RUN pip3 install --upgrade pip && \
    pip3 install NanoPlot gdown whatshap

# Install Porechop
RUN cd /opt && \
    git clone https://github.com/rrwick/Porechop.git && \
    cd Porechop && \
    python3 setup.py install

# Install Minimap2
RUN cd /opt && \
    git clone https://github.com/lh3/minimap2.git && \
    cd minimap2 && make && \
    ln -s /opt/minimap2/minimap2 /usr/local/bin/minimap2

# Install pypy manually
RUN cd /opt && \
    wget https://downloads.python.org/pypy/pypy3.9-v7.3.13-linux64.tar.bz2 && \
    tar -xjf pypy3.9-v7.3.13-linux64.tar.bz2 && \
    ln -s /opt/pypy3.9-v7.3.13-linux64/bin/pypy3 /usr/local/bin/pypy
# Install Clair3 and dependencies
RUN apt-get update && apt-get install -y \
    ninja-build \
    && apt-get clean

RUN cd /opt && \
    git clone https://github.com/HKU-BAL/Clair3.git && \
    cd Clair3 && \
    pip3 install -r requirements.txt && \
    make install && \
    ln -s /opt/Clair3/run_clair3.sh /usr/local/bin/run_clair3.sh
# Set working directory
WORKDIR /workspace
