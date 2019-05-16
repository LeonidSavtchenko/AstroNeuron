@echo off
rem The next parameters must be adjusted before the first launch
set HEADNODEIP=astro.zhunmyeaei.eu-west-1.elasticbeanstalk.com
rem set HEADNODEIP=127.0.0.1
set LOGIN=ucl
set PASSWORD=fff -agent -P 80
rem set PASSWORD=ucl
set HEADNODEWORKERDIR=/ucl/Astro-master/clusterCaSim/hpc
rem Other parameters
set MATLABHOSTDIR=%cd%
set THIRDPARTYDIR="%cd%\Core\3rdparty"
set REMOTESCRIPTSDIR=%HEADNODEWORKERDIR%/scripts
