#!/bin/sh

for i in {1..5}; 
do
	cpptraj -i cpptraj.hbond${i}.in
done

echo "Finished Production on `date` "


