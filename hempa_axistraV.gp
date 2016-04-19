set terminal gif animate optimize size 800, 400 font "GothicBBB-Medium-EUC-H,15"
set output "./anm/hempa_axistraVV.gif"
set xyplane at 0
set xzeroaxis
set xrange[0:30*pi*0.2]
set zrange[-1:1]
unset tics
unset border


do for[tt=0:30*pi]{
	t=0.2*tt
	set arrow nohead from 0,-5,0 to 0,5,0 lw 2
	set label 1 "送信アンテナ" at 0,0,-1
	set arrow nohead from 30*pi*0.2,-5,0 to 30*pi*0.2,5,0 lw 2
	set label 2 "受信アンテナ" at 30*pi*0.2,0,-1
	set arrow 1 nohead from 0,-5*sin(t),-0.2 to 0,-5*sin(t),0.2 lw 1   #電流の動き
	set arrow nohead from t,0,0 to t,0,sin(t) ls 7   #磁界
	set arrow nohead from t,0,0 to t,-5*sin(t),0 ls 3   #電界
	sp 20 ls 3 title "電界", 20 ls 7 title "磁界"
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

