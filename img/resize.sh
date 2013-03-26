#!/bin/bash

for i in rad*; do
	cd $i
	for j in s*; do
		cd $j
		for f in [1-3].png; do
			cp $f s_$f
		done
		for f in _[1-3].png; do
			mv $f `echo $f | sed -e 's/^_//'` 
		done
		cd ..
	done
	cd ..
done
