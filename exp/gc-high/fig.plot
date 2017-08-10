set terminal postscript eps enhanced font 'Helvetica,16' linewidth 1
set output 'fig.eps'
set ylabel "# of page copies" offset 1
#set xlabel "Traces" offset 1
set style data histograms
set style histogram cluster gap 1
set style fill solid border -1
set size 1.0, 0.8

#set yrange[0.7:1.3]

set key top right

#set xtics nomirror rotate by -90 scale 0 ",10"
set xtics nomirror rotate by -45 scale -1

#set label 1 '3.5' at 0.5, 1.28 font "Helvetica, 10"
#set label 2 '2.3' at 2.5, 1.28 font "Helvetica, 10"
#set label 3 '2.2' at 3.5, 1.28 font "Helvetica, 10"
#set label 4 '2.8' at 4.5, 1.28 font "Helvetica, 10"
#set label 5 '4.9' at 5.5, 1.28 font "Helvetica, 10"

plot newhistogram "",\
	"FTL.dat" using 2:xtic(1) ti "Conventional SSD" w histograms fs solid	0.1 ls 1,\
	"SSD-Insider.dat" using 2:xtic(1) ti "SSD-Insider" w histograms fs solid 0.7 ls 1
