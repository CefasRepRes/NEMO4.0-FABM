source /etc/profile.d/modules.sh
module purge

#qmodule load git/2.27.0
module load cmake/3.31.8
module add intel/2025.3.0
module add netcdf/4.7.4/parallel/intel-2025-openmpi-cefas-nemo
module add hdf5/1.14.6/intel-2025-openmpi-cefas-nemo
module add mpi/openmpi/4.1.6/intel/2025-ib-cefas-nemo

export FABM_HOME=$HOME/ifxNEMO/fabm/nemo-ersem-ifx/
export FABM_DIR=$HOME/ifxNEMO/Dev_fabm
export XIOS_HOME=$HOME/ifxNEMO/xios-2.5-cefas
export NEMO_HOME=$HOME/ifxNEMO/NEMO4.0-FABM
export ERSEM_HOME=/gpfs/data/cefas-shared/NEMO-benchmark-cfg/code/ersem

ARCH="UEAHALI_INTEL"
CFG="AMM7_FABM_ERSEM_IFX"
REF="AMM7_FABM"