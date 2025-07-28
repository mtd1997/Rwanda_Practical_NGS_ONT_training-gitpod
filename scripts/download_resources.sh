#!/bin/bash

set -e

echo "Downloading resources from Google Drive..."

# Create a data directory
mkdir -p /workspace/data
cd /workspace/data

# Download training_fastq.zip
echo "Downloading FASTQ zip file..."
gdown --id 1P8YrFIPQz0iwmkR7jczSXyTDGrmrrIqm -O training_fastq.zip

# Unzip FASTQ files
echo "Unzipping FASTQ files..."
unzip training_fastq.zip -d fastq_pass

# Sample sheet Excel file
echo "Downloading sample sheet..."
gdown --id 1w8nMqIB6hKYmuirKAQfPY9mESaUo9dN7 -O sample_sheet.xlsx

# Reference genome
echo "Downloading reference genome..."
gdown --id 1CnrgAJDmvL2XmQrfJfjcl7IftotrD37c -O reference.fasta

# Clair3 model (change this if multiple files needed)
echo "Downloading Clair3 model..."
mkdir -p clair3_model
cd clair3_model
gdown --id 1QCbyeV7vb7aTgpaLKciY-ymAq9jY9bTr -O r941_prom_hac_g360.zip
unzip r941_prom_hac_g360.zip
cd ..

# SnpEff
echo "Downloading SnpEff..."
mkdir -p snpeff
cd snpeff
gdown --id 1KqRKHAkuoNR8Wrb3fqbsLHuFvJiK-nne -O snpeff.zip
unzip snpeff.zip
cd ..

echo "All resources downloaded and unpacked!"
