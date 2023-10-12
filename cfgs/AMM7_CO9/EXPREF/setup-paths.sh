# set input paths to those used here: https://github.com/CefasRepRes/CO_AMM7

INPUT=/gpfs/data/cefas-shared/NEMO/jmmp/AMM7/

ln -s ${INPUT}/inputs/BDY .
ln -s ${INPUT}/inputs/BDY_SKAG .
ln -s ${INPUT}/grid/coordinates.bdy.nc .
ln -s ${INPUT}/grid/coordinates.skagbdy.nc .
ln -s ${INPUT}/grid/domain_cfg_co9amm7_MEsL51r10-07.nc .
ln -s ${INPUT}/inputs/IC/initcd_y2005m01.nc .
ln -s ${INPUT}/inputs/RIV . 
ln -s ${INPUT}/inputs/SBC .
ln -s ${INPUT}/inputs/TIDE .

mkdir RESTARTS

