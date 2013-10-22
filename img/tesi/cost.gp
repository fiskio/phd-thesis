set terminal postscript eps enhanced color "Arial" 14
set size 0.50, 0.50
set pointsize 1.5

set key center top reverse Left samplen 2

set xlabel "number of queries"
set ylabel "mean reduction"
#set title "Cost SIC Trade-off (Mean)" 
set xtics rotate by -45
set yrange [0,-90]

set output "cost2.eps"
plot 'cost.dat' using 2:xticlabels(1) title "Cost reduction" with linespoints lw 2 pointtype 2,'' using 3:xticlabels(1) title "SIC reduction" with lp linetype 1 lw 2 linecolor rgb 'green'
quit

