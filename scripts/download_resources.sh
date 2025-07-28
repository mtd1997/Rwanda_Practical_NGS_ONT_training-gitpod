#!/bin/bash
set -e

echo "Downloading resources from Google Drive..."

# Create directory for resources
mkdir -p resources
cd resources

# 1. FASTQ files folder (unzipped)
echo "Downloading FASTQ folder (unzipped)..."
gdown --folder --id 1cWvepn5pRhaCSmLTQhh_Kr1A0PJtsCWK --output fastq_files

# 2. Sample renaming Excel sheet
echo "Downloading sample renaming Excel sheet..."
gdown --output sample_metadata.xlsx "https://docs.google.com/spreadsheets/d/1w8nMqIB6hKYmuirKAQfPY9mESaUo9dN7/export?format=xlsx"

# 3. Clair3 models (zipped)
echo "Downloading Clair3 models..."
gdown --output clair3_models.zip https://drive.google.com/uc?id=1QCbyeV7vb7aTgpaLKciY-ymAq9jY9bTr
unzip -q clair3_models.zip -d clair3_models && rm clair3_models.zip

# 4. SnpEff (zipped)
echo "Downloading SnpEff..."
gdown --output snpEff.zip https://drive.google.com/uc?id=1KqRKHAkuoNR8Wrb3fqbsLHuFvJiK-nne
unzip -q snpEff.zip -d snpEff && rm snpEff.zip

# 5. Reference genome (zipped)
echo "Downloading reference genome..."
gdown --output reference_genome_data.zip https://drive.google.com/uc?id=1CnrgAJDmvL2XmQrfJfjcl7IftotrD37c
unzip -q reference_genome_data.zip -d reference_genome_data && rm reference_genome_data.zip

echo "✅ All resources downloaded and ready."
