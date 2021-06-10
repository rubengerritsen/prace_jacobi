#!/bin/bash
#SBATCH --reservation=mpi_advanced
#SBATCH -n 16
#SBATCH --job-name=mpi-training
#SBATCH --output=out.p_np_16
#SBATCH --error=err.p_np_16
#SBATCH --time=0:05:00

module load 2020
module load foss/2020a

./make_all.sh mpi

export EXE="./a.out -s 32 32 -d 4 4"

srun ./trace.sh $EXE