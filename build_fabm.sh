source /etc/profile.d/modules.sh
module purge

module load git/2.27.0
module load cmake/3.16.5
module add intel/2020-4
module add netcdf/4.7.4/parallel/intel-2020-4-openmpi-cefas
module add hdf5/1.10.6/intel-2020-4-openmpi-cefas
module add mpi/openmpi/4.0.4/intel/ib-intel-2020-4-cefas

fabmdir=FABM_dev.git
cd ~/$fabmdir/build/
cmake ../ -DFABM_HOST=nemo
cmake --build . --target install

#cd ~/Projects/Dev_fabm/build_fabm/
#cmake ~/Projects/Dev_fabm/ -DFABM_HOST=nemo
#cmake --build . --target install
