#!/bin/bash
#SBATCH -p ib-24-96
#SBATCH --qos=cefas-ib
#SBATCH -o %j-nemo.out
#SBATCH -e %j-nemo.err
#SBATCH -t 00:45:00
#SBATCH --job-name=nemo
#SBATCH --ntasks=56
#SBATCH -x i0030

module purge
source ~/NEMO4.0-FABM/add_mod_ada_intel.sh

mpirun --mca orte_base_help_aggregate 0 ./nemo
