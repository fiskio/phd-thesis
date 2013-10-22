set terminal postscript eps enhanced color "Arial" 14
set size 0.50, 0.50
set pointsize 1.5

set key center top reverse Left samplen 2

set xlabel "Partitions"

set style histogram clustered gap 2
set style data histograms
set style fill solid 1.00 border 20
set title ""

set output "partitions.eps"
plot 'partitions' using 2:xticlabels(1) title col,'' using 3:xticlabels(1) title col
quit
