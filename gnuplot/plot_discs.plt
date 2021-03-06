set title "Rods of Length 20nm, Radius 20nm.\nHomeotropic Surface Anchoring" \
offset 0, 1 font ",16"

unset lmargin
unset rmargin

unset key
set format y "%g"

set xrange [-0.9:7.9]
set style line 1 lc rgb '#0060ad' lt 1 lw 2 pt 7 ps 1.5   # --- blue

set xlabel "Separation /nm"
set ylabel "Energy /J"

p 'data_discs' u 1:3:4 w yerrorbars ls 1

set term svg size 800,400 font "Georgia"
set out "l20_r20_a90.svg"
rep
