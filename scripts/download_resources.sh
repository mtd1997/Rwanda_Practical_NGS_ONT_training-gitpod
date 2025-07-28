#!/bin/bash
set -e

echo "Installing gdown if missing"
pip install --quiet gdown

# Download and unzip SnpEff
echo "Downloading SnpEff"
mkdir -p tools
gdown --id 1KqRKHAkuoNR8Wrb3fqbsLHuFvJiK-nne -O tools/snpEff.zip
unzip -q tools/snpEff.zip -d tools/
echo "SnpEff downloaded"

# Download and unzip Clair3 models
echo "Downloading Clair3 models"
mkdir -p models
gdown --id 1QCbyeV7vb7aTgpaLKciY-ymAq9jY9bTr -O models/clair3_models.zip
unzip -q models/clair3_models.zip -d models/
echo "Clair3 models downloaded"

# Download and unzip Reference genome data
echo "Downloading Reference genome data"
mkdir -p reference_genome_data
gdown --id 1CnrgAJDmvL2XmQrfJfjcl7IftotrD37c -O reference_genome_data/reference_genome_data.zip
unzip -q reference_genome_data/reference_genome_data.zip -d reference_genome_data/
echo "Reference genome data downloaded"

