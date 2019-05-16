@echo off

rem Run this BAT-script with four arguments specifying:
rem 1) the minimum number of processes,
rem 2) the maximum number of processes,
rem 3) the step of process grid,
rem 4) the process distribution scheme:
rem    1 - only master works,
rem    2 - only slaves work,
rem    3 - master and slaves work together.

rem Initialize variables
call Core\scripts\win-lin\params.bat

rem Go to 3rd party software directory containing plink.exe
cd %THIRDPARTYDIR%

rem Execute two commands on remote server:
rem 1) go to HPC kernel directory,
rem 2) run helper SH-script in background mode.
plink -pw %PASSWORD% %LOGIN%@%HEADNODEIP% "cd \"%REMOTESCRIPTSDIR%\"; sh scaltest.sh %1 %2 %3 %4"