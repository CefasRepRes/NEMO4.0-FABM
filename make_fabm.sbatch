#!/bin/bash
#SBATCH -p ib-24-96
#SBATCH --qos=cefas-ib
#SBATCH -o %j-make.out
#SBATCH -e %j-make.err
#SBATCH -t 00:20:00
#SBATCH --job-name=fabm
#SBATCH --ntasks=1 

module purge

# NB. For use with FABM build, run in build directory.  
# Code can be sourced here: https://github.com/fabm-model/fabm/

# Update paths for local NEMO and FABM sources. 

source ~/NEMO/NEMO4.0-FABM/add_mod_ada_intel.sh

cmake ~/fabm -DFABM_HOST=nemo

make 
make install

