#!/bin/bash

CFG="AMM7_FABM_IOWt"
EXP="EXP01"
ln -s /gpfs/data/cefas-shared/NEMO-benchmark-cfg/INPUTS ./cfgs/$CFG/$EXP/INPUTS
ln -s /gpfs/data/cefas-shared/NEMO-benchmark-cfg/INPUTS/DOM/restart.nc ./cfgs/$CFG/$EXP/restart.nc
ln -s /gpfs/data/cefas-shared/NEMO-benchmark-cfg/INPUTS/RIV/LOCATE_rivers.2005.alk.nc ./cfgs/$CFG/$EXP/river.nc
ln -s /gpfs/data/cefas-shared/NEMO-benchmark-cfg/RUN/$EXP/coordinates.bdy.nc ./cfgs/$CFG/$EXP/coordinates.bdy.nc
ln -s /gpfs/data/cefas-shared/NEMO-benchmark-cfg/RUN/$EXP/coordinates.skagbdy.nc ./cfgs/$CFG/$EXP/coordinates.skagbdy.nc
ln -s /gpfs/data/cefas-shared/NEMO-benchmark-cfg/RUN/$EXP/domain_cfg.nc ./cfgs/$CFG/$EXP/domain_cfg.nc
cp /gpfs/home/dzd22eyu/fabm/testcases/fabm-iow-spm.yaml ./cfgs/$CFG/$EXP/
ln -s ./cfgs/$CFG/$EXP/fabm-iow-spm.yaml ./cfgs/$CFG/$EXP/fabm.yaml
ln -s ./cfgs/$CFG/BLD/bin/nemo.exe ./cfgs/$CFG/$EXP/nemo
mkdir ./cfgs/$CFG/$EXP/RESTART
ln -s /gpfs/data/cefas-shared/NEMO-benchmark-cfg/INPUTS/DOM/restart.nc ./cfgs/$CFG/$EXP/RESTART/restart.nc
#cp run_nemo.sbatch ./cfgs/$CFG/$EXP/
#ln -s /gpfs/home/dzd22eyu/wave-test-2.nc ./cfgs/$CFG/$EXP/INPUTS/AMM7-wave-stress_y2005.nc