#!/bin/bash
#SBATCH -p ib-24-96
#SBATCH --qos=cefas-ib
#SBATCH -o %j-make.out
#SBATCH -e %j-make.err
#SBATCH -t 00:20:00
#SBATCH --job-name=nemo
#SBATCH --ntasks=1 

# NB. Update paths for local NEMO and FABM sources.

module purge
source ~/NEMO4.0-FABM/add_mod_ada_intel.sh

./makenemo -n $CFG -r $REF -m $ARCH -j 4

