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

# Install Miniconda
RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh && \
    bash miniconda.sh -b -p /opt/conda && \
    rm miniconda.sh

ENV PATH="/opt/conda/bin:$PATH"
WORKDIR /workspace
