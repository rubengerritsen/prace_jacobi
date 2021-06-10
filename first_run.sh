#!/bin/bash 
#SBATCH --reservation=mpi_advanced 
#SBATCH -n 16
#SBATCH --job-name=first_run
#SBATCH --output=first_run.out
#SBATCH --error=first_run.err
#SBATCH --time=0:05:00

module load 2020
module load foss/2020a

./make_all.sh mpi

srun ./a.out -s 10 10 -d 1 16