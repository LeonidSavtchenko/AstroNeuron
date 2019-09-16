@echo off

rem The next parameters must be adjusted before the first launch
set HEADNODEIP=144.82.46.83
set LOGIN=*****
set PASSWORD=*****
set HEADNODEWORKERDIR=/home/savtchenko/amcbridge/phase14/nano2/clusterCaSim/hpc

rem Also, you may need to adjust "GSDIR" path in %HEADNODEWORKERDIR%/build/lin_release.sh

rem Other parameters
set MATLABHOSTDIR="%cd%"
set THIRDPARTYDIR="%cd%\Core\3rdparty"
set REMOTESCRIPTSDIR=%HEADNODEWORKERDIR%/scripts
