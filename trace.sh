#!/bin/bash

source /sw/arch/Debian10/EB_production/2020/software/Extrae/3.8.3-gompi-2020a/etc/extrae.sh
export EXTRAE_CONFIG_FILE=./extrae.xml
# For C apps
export LD_PRELOAD=${EXTRAE_HOME}/lib/libmpitrace.so

## Run the desired program
$*

