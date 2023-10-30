#!/bin/bash
#SBATCH --job-name=NH3_480c_ph
#SBATCH --account=fc_mllam
#SBATCH --partition=savio
#SBATCH --nodes=6
#SBATCH --ntasks-per-node=20
#SBATCH --cpus-per-task=1
#SBATCH --time=72:00:00
#SBATCH --output=NH3_480c_ph_%j.out
#SBATCH --error=NH3_480c_ph_%j.err
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user=ketong_shao@berkeley.edu,jwang44@nd.edu
## Command(s) to run:

module load quantumespresso/6.4.1-qmcpack
export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK

mpirun ph.x -npool 8 < NH3_480c_ph.phi > NH3_480c_ph.out