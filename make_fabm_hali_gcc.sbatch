#!/bin/bash
#SBATCH -p ib
#SBATCH --constraint=mlx5    # ib-64-512 nodes
#SBATCH --qos=ib
#SBATCH -o %j-fabm.out
#SBATCH -e %j-fabm.err
#SBATCH -t 00:20:00
#SBATCH --job-name=fabmcomp
#SBATCH --ntasks=1

module purge

# NB. For use with FABM build, run in build directory.  
# Code can be sourced here: https://github.com/fabm-model/fabm/

# Update paths for local NEMO and FABM sources. 

source ~/git/NEMO4.0-FABM/add_mod_hali_gcc.sh

cmake ~/git/fabm -DFABM_HOST=nemo

make 
make install

