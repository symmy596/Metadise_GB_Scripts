#!/bin/bash

cp $1 input.txt 

~/bin/scan

t=0

for i in input_000*
do

let "t=$t+1"

mkdir "d$t"

mv $i "d$t"/input.txt

cd "d$t"

sed 's/'"\        "'/'" "'/' input.txt > new 
mv new input.txt

echo ~/bin/metadise <input.txt >m$t.out

cd ..

done

