#!/bin/bash

source /sw/arch/Debian10/EB_production/2020/software/Extrae/3.8.3-gompi-2020a/etc/extrae.sh

export EXTRAE_CONFIG_FILE=../extrae.xml
#export LD_PRELOAD=${EXTRAE_HOME}/lib/libmpitrace.so # For C apps
export LD_PRELOAD=${EXTRAE_HOME}/lib/libmpitracef.so # For Fortran apps

## Run the desired program
$*

