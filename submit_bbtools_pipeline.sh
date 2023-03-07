#!/bin/bash

#SBATCH -J bbtools
#SBATCH --mail-user=rachel.rodgers
#SBATCH --mail-type=ALL

eval "$(conda shell.bash hook)"
conda activate snakemake_7.22.0

snakemake --profile slurm_bbtools_pipeline --rerun-triggers mtime --keep-going
