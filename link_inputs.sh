#!/bin/bash

CFG="AMM7_FABM_IOW"
ln -s /gpfs/data/cefas-shared/NEMO-benchmark-cfg/INPUTS ./cfgs/$CFG/EXP00/INPUTS
ln -s /gpfs/data/cefas-shared/NEMO-benchmark-cfg/INPUTS/DOM/restart.nc ./cfgs/$CFG/EXP00/restart.nc
ln -s /gpfs/data/cefas-shared/NEMO-benchmark-cfg/INPUTS/RIV/LOCATE_rivers.2005.alk.nc ./cfgs/$CFG/EXP00/river.nc
ln -s /gpfs/data/cefas-shared/NEMO-benchmark-cfg/RUN/EXP00/coordinates.bdy.nc ./cfgs/$CFG/EXP00/coordinates.bdy.nc
ln -s /gpfs/data/cefas-shared/NEMO-benchmark-cfg/RUN/EXP00/coordinates.skagbdy.nc ./cfgs/$CFG/EXP00/coordinates.skagbdy.nc
ln -s /gpfs/data/cefas-shared/NEMO-benchmark-cfg/RUN/EXP00/domain_cfg.nc ./cfgs/$CFG/EXP00/domain_cfg.nc
cp /gpfs/home/dzd22eyu/fabm/testcases/fabm-iow-spm.yaml ./cfgs/$CFG/EXP00/
ln -s ./cfgs/$CFG/EXP00/fabm-iow-spm.yaml ./cfgs/$CFG/EXP00/fabm.yaml
mkdir ./cfgs/$CFG/EXP00/RESTART
ln -s /gpfs/data/cefas-shared/NEMO-benchmark-cfg/INPUTS/DOM/restart.nc ./cfgs/$CFG/EXP00/RESTART/restart.nc
cp run_nemo.sbatch ./cfgs/$CFG/EXP00/
ln -s /gpfs/home/dzd22eyu/wave-test-2.nc ./cfgs/$CFG/EXP00/INPUTS/AMM7-wave-stress_y2005.nc