source /etc/profile.d/modules.sh
module purge


module add cmake/3.16.0-rc4
module add gcc/9.2.0
module add mpi/openmpi/4.0.3/gcc/ib
module add netcdf/4.7.4/parallel/gcc-openmpi
module add hdf5/1.10.6/gcc-openmpi

#export FABM_HOME=/gpfs/home/uck09rvu/git/fabm
export FABM_HOME=/gpfs/home/uck09rvu/local/fabm/nemo/
export XIOS_HOME=/gpfs/home/uck09rvu/git/xios-2.5
export NEMO_HOME=/gpfs/home/uck09rvu/git/NEMO4.0-FABM

ARCH="UEAHALI_GCC"
CFG="newconfig3"
REF="AMM7_FABM"
