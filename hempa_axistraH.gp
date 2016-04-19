set terminal gif animate optimize size 800, 400
set output "./anm/hempa_axistraH.gif"
set xyplane at 0
set xzeroaxis
set xrange[0:30*pi*0.2]
set zrange[-1:1]
unset tics
unset border

i=1
j=500
do for[tt=0:30*pi]{
	t=0.2*tt
	set arrow i nohead from t,-1,sin(t) to t,1,sin(t) ls 3
	set arrow j nohead from t,sin(t),-1 to t,sin(t),1 ls 7
	sp 20 notitle
	i=i+1
	j=j+1
}




# set terminal gif animate optimize size 800, 400
# set output "./anm/hempaH.gif"

# do for[t=0:10*pi]{
# 	reset
# 	# unset grid
# 	# unset polar
# 	# unset arrow
# 	# unset tics

# 	set multiplot layout 1,2
# 	set zrange[-1:1]
# 		s=sin(0.2*t)
# 		sp s*sin(z) 

# 	# __POLAR__________________________
# 	set border 0
# 	set polar
# 	set grid polar
# 	set rrange[0:1]
# 	set trange[0:2*pi]
# 		set arrow from 0,0 to s,0
# 		p 0
# 		# unset border
# unset multiplot
# }

