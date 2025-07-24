#!/bin/bash
set -e

echo "Downloading Clair3 models"
mkdir -p models
pip install --quiet gdown

# Download Clair3 models from Google Drive
gdown --id 1QCbyeV7vb7aTgpaLKciY-ymAq9jY9bTr -O models/clair3_models.zip

# Unzip
unzip -q models/clair3_models.zip -d models/
echo "Clair3 models are ready in models/"
