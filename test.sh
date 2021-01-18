#!/bin/bash
#SBATCH --job-name test
#SBATCH --output log.out
#SBATCH --error log.err
#SBATCH --gres gpu:1
#SBATCH --nodes 1
#SBATCH --ntasks-per-node 1
#SBATCH --cpus-per-task 6
#SBATCH --partition short

echo "hi"
