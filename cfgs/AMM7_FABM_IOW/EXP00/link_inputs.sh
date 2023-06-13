#!/bin/bash

ln -s /gpfs/data/cefas-shared/NEMO-benchmark-cfg/INPUTS ./INPUTS
ln -s ./INPUTS/DOM/restart.nc ./restart.nc
ln -s ./INPUTS/RIV/LOCATE_rivers.2005.alk.nc ./river.nc
ln -s /gpfs/data/cefas-shared/NEMO-benchmark-cfg/RUN/EXP00/coordinates.bdy.nc ./coordinates.bdy.nc
ln -s /gpfs/data/cefas-shared/NEMO-benchmark-cfg/RUN/EXP00/coordinates.skagbdy.nc ./coordinates.skagbdy.nc
ln -s /gpfs/data/cefas-shared/NEMO-benchmark-cfg/RUN/EXP00/domain_cfg.nc ./domain_cfg.nc
cp /gpfs/home/dzd22eyu/fabm/testcases/fabm-iow-spm.yaml ./fabm.yaml
