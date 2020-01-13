#
# run with
# gnuplot> load 'plotconvergence.gp'
#
#set logscale x
set xlabel 'Time (ns)'
set ylabel 'RMSD (Angstroms)'
set yrange [0:6]
set xrange [1:2000]

set key on outside 
#set terminal postscript enhanced color solid
#set output 'plot2.ps'
set terminal png
set output 'output_name.png'

set style data linespoints
set title "THIS IS THE TITLE"

#set arrow from graph 0,first 432 to graph 1,first 432 nohead lc rgb "#000000" front
plot "sim1.dat" using 1:2 title "run1", \
     "sim2.dat" using 1:2 title "run2", \
     "sim3.dat" using 1:2 title "run3", \
     "sim4.dat" using 1:2 title "run4", \
     "sim5.dat" using 1:2 title "run5", \
