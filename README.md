# NGS Targeted Sequencing Training – *Plasmodium falciparum* (ONT)

This hands-on training is designed for MSc students in Rwanda and focuses on the analysis of *Plasmodium falciparum* targeted sequencing data generated using Oxford Nanopore Technology (ONT).  
Students will learn how to go from raw FASTQ reads through quality control, alignment, and variant calling using Clair3. Downstream, they will extract useful information from VCFs using **Python**, and visualize results using **R**.

---

## How to Use This Gitpod Environment

All the work is done **in the cloud** using [Gitpod](https://gitpod.io), so you don’t need to install anything.

### Start Now (One Click)

Click this button to launch the training environment in Gitpod:

[![Open in Gitpod](https://www.gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/mtd1997/Rwanda_Practical_NGS_ONT_training-gitpod)

---

## Pre-installed Tools for this  training

- [NanoPlot](https://github.com/wdecoster/NanoPlot) — quality check of raw ONT reads  
- [Porechop](https://github.com/rrwick/Porechop) — adapter trimming  
- [Minimap2](https://github.com/lh3/minimap2) — read alignment  
- [Clair3](https://github.com/HKU-BAL/Clair3) — variant calling   
- [Samtools](http://www.htslib.org/) & [Bcftools](https://samtools.github.io/bcftools/) — BAM/VCF processing  
- [SnpEff](https://pcingola.github.io/SnpEff/) — variant annotation  
- Python 3, Jupyter, and R for analysis and visualization

---

## Reference Data and Tools

When the workspace starts, a script will download:

- Reference genome data  
- SnpEff database with our reference genome 
- Clair3 models

All stored in folders: reference_genome_data/, tools/snpEff/, models/
