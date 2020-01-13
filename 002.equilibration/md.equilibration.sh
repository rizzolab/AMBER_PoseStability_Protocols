#!/bin/sh
export CUDA_VISIBLE_DEVICES="2"

cd /path/to/home/002.equilbration 

echo "Started Equilibration on `date` "
do_parallel="pmemd.cuda"

prmtop="../001.tleap_build/system.wet.complex.prmtop"
coords="../001.tleap_build/system.wet.complex"


MDINPUTS=(01.min 02.equil 03.min 04.min 05.min 06.equil 07.equil 08.equil 09.equil)

for input in ${MDINPUTS[@]}; do

  $do_parallel -O -i ${input}.mdin -o ${input}.mdout -p $prmtop -c ${coords}.rst7 -ref ${coords}.rst7 -x ${input}.trj -inf ${input}.info -r ${input}.rst7
  coords=$input
done

echo "Finished Equilibration on `date` "


