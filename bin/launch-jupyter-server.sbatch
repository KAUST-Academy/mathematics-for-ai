#!/bin/bash --login
#SBATCH --time 2:00:00
#SBATCH --gpus-per-node=v100:1
#SBATCH --cpus-per-gpu=6  
#SBATCH --mem-per-gpu=64G 
#SBATCH --partition=batch 
#SBATCH --job-name=launch-jupyter-server
#SBATCH --mail-type=ALL
#SBATCH --output=results/%x-%j-slurm.out
#SBATCH --error=results/%x-%j-slurm.err

# use srun to launch Jupyter server in order to reserve a port
srun --resv-ports=1 $PWD/bin/launch-jupyter-server.srun
