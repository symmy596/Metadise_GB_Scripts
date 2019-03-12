#!/bin/bash



order=`find . -name d\* -type d | sed 's/d/d /' | sort -nk2 | sed 's/d /d/'` 

for i in $order

do
 

cd $i

grep 'scan_newt ' summ_o0001.out | head -1 | awk -v i=$i '{print i, $2, $3, $4, $5, $6, $7, $8, $9}'  >> ../test.eng

cd ..

sed 's/...//' test.eng > grid.eng

awk 'NR == 1 || $5 < min {min = $5; minln = $1}END{print minln min}'  grid.eng > emin.txt

done

rm test.eng

