#!/bin/sh
export CUDA_VISIBLE_DEVICES="0"

echo "Started Production on `date` "
#do_parallel="mpirun pmemd.MPI"
do_cuda="pmemd.cuda"

prmtop="../../001.tleap_build/system.wet.complex.prmtop"
coords="../../002.equilibration/09.equil"



for i in {1..5}; 
do

  $do_cuda -O -i 10.prod${i}.mdin -o 10.prod${i}.mdout -p $prmtop -c ${coords}.rst7 -ref ${coords}.rst7 -x 10.prod${i}.trj -inf 10.prod${i}.info -r 10.prod${i}.rst7
done

echo "Finished Production on `date` "


