#!/bin/bash

for i in ./*.pdf; do
   # Get file name
   filename=$(echo $i | sed 's/.pdf//')
   # convert into eps
   pdftops "$i" $filename-temp.ps -r 1200
   ps2eps $filename-temp.ps -r 1200
   mv $filename-temp.eps $filename.eps
   rm $filename-temp.ps
done


exit
