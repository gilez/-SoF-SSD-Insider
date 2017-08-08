set terminal postscript eps enhanced font 'Helvetica,16' linewidth 1
set output 'fig.eps'
set ylabel "Elapsed time (nanosecond)" offset 1
set style data histogram
set style histogram rowstacked
set style fill solid border -1
set boxwidth 0.5
set yrange [0: 3000]

set key top right 
set xtics nomirror rotate by -45 scale -1
set size 1.0, 0.8

plot 'WRITE.dat' \
	using 2:xtic(1) ti "FTL code" fs solid 0.3 ls 1,\
	'' using 3 ti "SSD-Insider (Detection/Recovery)" fs solid 0.8 ls 1,\


