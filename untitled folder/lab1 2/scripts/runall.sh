#!/bin/sh

######################################################################################
# This scripts runs all four traces
# You will need to first compile your code in ../src before launching this script
# the results are stored in the ../results/ folder 
######################################################################################



########## ---------------  Lab1 ---------------- ################
echo "Starting bzip2..."
../src/sim ../traces/bzip2.otr.gz > ../results/Lab1.bzip2.res 
echo "Starting gcc..."
../src/sim ../traces/gcc.otr.gz > ../results/Lab1.gcc.res 
echo "Starting libq..."
../src/sim ../traces/libq.otr.gz > ../results/Lab1.libq.res 
echo "Starting mcf..."
../src/sim ../traces/mcf.otr.gz > ../results/Lab1.mcf.res

######### ------- Generate Report -------- ##################

../scripts/genreport.ecelinsrv7 > report.txt

######### ------- Goodbye -------- ##################

echo "Done. Check .res files in ../results directory and report in ./report.txt"
echo "You must submit the report.txt file along with your studentwork.cpp file."
