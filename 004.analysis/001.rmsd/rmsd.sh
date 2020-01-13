#!/bin/sh

for i in {1..5}; 
do
	cpptraj -i stripfit${i}.in
	cpptraj -i rmsdlig${i}.in
done

echo "Finished Production on `date` "


