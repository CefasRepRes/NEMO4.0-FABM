source /etc/profile.d/modules.sh
module purge



module add cmake/3.16.0-rc4
module add intel/2025.1.0
module add netcdf/4.7.4/parallel/intel-2025-openmpi-cefas
module add hdf5/1.10.6/intel-2025-openmpi-cefas
module add mpi/openmpi/4.1.6/intel/2025-ib

#export FABM_HOME=/gpfs/home/uck09rvu/git/fabm
export FABM_HOME=/gpfs/home/uck09rvu/local/fabm/nemo/
export XIOS_HOME=/gpfs/home/uck09rvu/git/xios-2.5
export NEMO_HOME=/gpfs/home/uck09rvu/git/NEMO4.0-FABM

ARCH="UEAHALI_INTEL"
CFG="newconfig2"
REF="AMM7_FABM"
