#!/bin/bash --login
#SBATCH --time 12:00:00
#SBATCH --cpus-per-task=4  
#SBATCH --mem=16G 
#SBATCH --partition=batch 
#SBATCH --job-name=launch-training-job
#SBATCH --mail-type=ALL
#SBATCH --output=results/%x-%j-slurm.out
#SBATCH --error=results/%x-%j-slurm.err

# setup the environment
conda activate $PWD/env

# run your training script
python $PWD/src/train.py
