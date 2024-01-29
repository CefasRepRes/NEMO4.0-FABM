#!/bin/bash
#SBATCH -p cefas-ib-24-96
#SBATCH --qos=cefas-ib
#SBATCH -o %j-make.out
#SBATCH -e %j-make.err
#SBATCH -t 00:20:00
#SBATCH --job-name=maknemo
#SBATCH --ntasks=1 

# NB. Update paths for local NEMO and FABM sources.

module purge
source ~/Projects/NEMO4.0-FABM/add_mod_ada_intel.sh
rm -v -f cfgs/$CFG/BLD/bin/nemo.exe

./makenemo -n $CFG -r $REF -m $ARCH -j 4

