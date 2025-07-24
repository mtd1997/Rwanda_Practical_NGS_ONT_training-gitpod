#!/bin/bash
set -e

echo "Downloading SnpEff"
mkdir -p tools
pip install --quiet gdown

# Download SnpEff from Google Drive
gdown --id 1KqRKHAkuoNR8Wrb3fqbsLHuFvJiK-nne -O tools/snpEff.zip

# Unzip
unzip -q tools/snpEff.zip -d tools/
echo "SnpEff is ready at tools/snpEff/"
