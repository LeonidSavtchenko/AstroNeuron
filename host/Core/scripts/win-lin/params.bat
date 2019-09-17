@echo off

rem The next parameters must be adjusted before the first launch
REM set HEADNODEIP=144.82.46.83
REM set LOGIN=****
REM set PASSWORD=****
REM set HEADNODEWORKERDIR=/home/savtchenko/amcbridge/phase14/nano2/clusterCaSim/hpc


set HEADNODEIP=34.244.226.81
set LOGIN=ucl
set PASSWORD=fff -agent -P 2222
set HEADNODEWORKERDIR=/ucl/AstroNeuron-master/hpc

rem Also, you may need to adjust "GSDIR" path in %HEADNODEWORKERDIR%/build/lin_release.sh

rem Other parameters
set MATLABHOSTDIR="%cd%"
set THIRDPARTYDIR="%cd%\Core\3rdparty"
set REMOTESCRIPTSDIR=%HEADNODEWORKERDIR%/scripts
