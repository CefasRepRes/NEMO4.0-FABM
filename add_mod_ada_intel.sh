source /etc/profile.d/modules.sh
module purge

module load git/2.27.0
module load cmake/3.16.5
module add intel/2020-4
module add netcdf/4.7.4/parallel/intel-2020-4-openmpi-cefas
module add hdf5/1.10.6/intel-2020-4-openmpi-cefas
module add mpi/openmpi/4.0.4/intel/ib-intel-2020-4-cefas

#export FABM_HOME=/gpfs/home/uck09rvu/git/fabm
export FABM_HOME=/gpfs/home/uck09rvu/local/fabm/nemo/
export XIOS_HOME=/gpfs/home/uck09rvu/git/xios-2.5
export NEMO_HOME=/gpfs/home/uck09rvu/git/NEMO4.0-FABM

ARCH="UEAADA_INTEL"
CFG="newconfig2"
REF="AMM7_FABM"
