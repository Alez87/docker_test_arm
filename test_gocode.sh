#!/bin/bash
Tstart=$(date +%s%6N)
go build -o main_native main.go
Tbuild=$(date +%s%6N)
./main_native
Tend=$(date +%s%6N)
Build_Elapsed=$(((Tbuild-Tstart)/1000))
Run_Elapsed=$(((Tend-Tbuild)/1000))

echo "Tstart: " $Tstart"us"
echo "Tbuild: " $Tbuild"us"
echo "Tend: " $Tend"us"

echo "Build time: " $Build_Elapsed"ms"
echo "Run time: " $Run_Elapsed"ms"

