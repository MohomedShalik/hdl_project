#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/home/halaldeen-ms/vivado/SDK/2018.3/bin:/home/halaldeen-ms/vivado/Vivado/2018.3/ids_lite/ISE/bin/lin64:/home/halaldeen-ms/vivado/Vivado/2018.3/bin
else
  PATH=/home/halaldeen-ms/vivado/SDK/2018.3/bin:/home/halaldeen-ms/vivado/Vivado/2018.3/ids_lite/ISE/bin/lin64:/home/halaldeen-ms/vivado/Vivado/2018.3/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=/home/halaldeen-ms/vivado/Vivado/2018.3/ids_lite/ISE/lib/lin64
else
  LD_LIBRARY_PATH=/home/halaldeen-ms/vivado/Vivado/2018.3/ids_lite/ISE/lib/lin64:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/halaldeen-ms/Dev/gaussian_filter/gaussian_filter.runs/adder_13b_synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log adder_13b.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source adder_13b.tcl
