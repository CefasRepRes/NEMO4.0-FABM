'''
Script to convert wave data
a NEMO surface forcing file

Inputs
------
nx/ny - integer, domain size
ys/e - integer, desired start and end year.
domnam - str, short tag name for the domain
f_in - str, file path to the wave txt file
f_out - str, output filename

'''

import pandas as pd
import datetime as dt
import numpy as np
import netCDF4
import os

#######################################
# USER INPUTS
ny=375
nx=297
ys=2005
ye=2005
domnam='AMM7'
f_in='../Uorb_average_transpose_1.txt'
f_out='../wave-test-2.nc'
#######################################

# Read Data
dat = pd.read_csv(f_in, header=None)

#time = np.array(pd.date_range(start='1/1/2005', end='12/1/2005', periods=12))
time = np.array([dt.datetime(2005,m,1) for m in [1,2,3,4,5,6,7,8,9,10,11,12]]) 
print(time)
tw = dat
tw = np.flipud(tw)
tw = np.broadcast_to(tw[..., np.newaxis], (375, 297, 12))
tw = np.transpose(tw, axes=[2, 0, 1])

# Create NETCDF file
dims = {'y': ny, 'x': nx, 't': None}
vars = [{'name':'tauw','type':'double',
           'dims': ('t','y','x'), #'dims': ('y','x','t'),
           'units':"m/s"},
        {'name':'t','type':'double',
           'dims': ('t'),
           'units':"days since 1970-01-01 00:00:00"}]
nco = netCDF4.Dataset(f_out,'w')
for d in dims:
    nco.createDimension(d,dims[d])
for v in vars:
    dat=nco.createVariable(v['name'],v['type'],v['dims'])
    dat.units = v['units']

nco.author = os.getenv('USER')
nco.history = dt.datetime.now().strftime("Created on %a, %B %d, %Y at %H:%M")
nco.title = 'wave data for '+domnam+' domain'
nco.comment = 'wave data from C.Beraud'

# Set variables
nco.variables['t'][:] = netCDF4.date2num(time,nco.variables['t'].units)
nco.variables['tauw'][:] = tw
nco.close()
#ncks -O --mk_rec_dmn time in.nc out.nc
