#!/bin/bash
#SBATCH -p ib
#SBATCH --constraint=mlx5    # ib-64-512 nodes
#SBATCH --qos=ib
#SBATCH -o %j-make.out
#SBATCH -e %j-make.err
#SBATCH -t 00:20:00
#SBATCH --job-name=nemo
#SBATCH --ntasks=4 

# NB. Update paths for local NEMO and FABM sources.

module purge
source ~/git/NEMO4.0-FABM/add_mod_hali_gcc.sh

# Clean previous build
./makenemo -n $CFG -r $REF -m $ARCH clean

./makenemo -n $CFG -r $REF -m $ARCH -j 4

