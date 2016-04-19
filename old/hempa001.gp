set terminal gif animate optimize size 800, 400
set output "./anm/hempa.gif"

do for[t=0:10*pi]{
	reset
	# unset grid
	# unset polar
	# unset arrow
	unset xtics
	unset ytics

	set isosample 100
	# set filledcurves
	set multiplot layout 1,2
	set zrange[-1:1]
		tt=0.2*t
		r(tt)=sin(0.2*tt)
		f(vect,time)=sin(vect-time)
		# f(x,tt)=r(tt)*sin(x)
		sp[0:8*pi] f(x,tt) notitle w filledcurves

	# __POLAR__________________________
	set border 0
	set polar
	set grid polar
	set rrange[0:1]
	set trange[0:2*pi]
		set arrow from 0,0 to cos(tt),sin(tt)
		p 0 notitle
		# unset border
unset multiplot
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

