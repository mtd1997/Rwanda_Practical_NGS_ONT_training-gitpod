#!/bin/bash

# Install gdown if not already available
pip3 install --quiet gdown

# Download the shared Google Drive folder containing fastq files
echo "Downloading FASTQ files from Google Drive..."
gdown --folder https://drive.google.com/drive/folders/1cWvepn5pRhaCSmLTQhh_Kr1A0PJtsCWK?usp=sharing -O data/fastq_files
