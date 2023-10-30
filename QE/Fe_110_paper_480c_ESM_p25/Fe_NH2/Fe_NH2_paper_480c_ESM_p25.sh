#!/bin/bash
#SBATCH --job-name=Fe_NH2_paper_480c_ESM_p25
#SBATCH --account=fc_mllam
#SBATCH --partition=savio
#SBATCH --nodes=8
#SBATCH --ntasks-per-node=20
#SBATCH --cpus-per-task=1
#SBATCH --time=72:00:00
#SBATCH --output=Fe_NH2_paper_480c_ESM_p25_%j.out
#SBATCH --error=Fe_NH2_paper_480c_ESM_p25_%j.err
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user=ketong_shao@berkeley.edu,jwang44@nd.edu
## Command(s) to run:

module load quantumespresso/6.4.1-qmcpack
export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK

mpirun pw.x -npool 8 < Fe_NH2_paper_480c_ESM_p25.pwi > Fe_NH2_paper_480c_ESM_p25.out