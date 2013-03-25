#!/bin/bash

for i in rad*; do
	cd $i
	for j in s*; do
		cd $j
		for f in *.png; do
			cp $f _$f
			convert $f -resize 50% $f
		done
		cd ..
	done
	cd ..
done
