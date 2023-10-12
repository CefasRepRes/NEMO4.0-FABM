#!/bin/bash
#SBATCH -p cefas-ib-24-96
#SBATCH --qos=cefas-ib
#SBATCH -o %j-nemo.out
#SBATCH -e %j-nemo.err
#SBATCH -t 00:20:00
#SBATCH --job-name=nemo
#SBATCH --ntasks=20

module purge
source ~/NEMO/NEMO4.0-FABM/add_mod_ada_intel.sh

mpirun ./nemo
