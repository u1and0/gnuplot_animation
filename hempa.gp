# ____________________________
# henpa.gp ver 0.1.0
# <INTRODUCTION>
# 偏波を表示する
# <ACTION>
# gifを出力する
# splotで3次元の波
# plotでarrowを反時計回りに回す←何に使うんだ
# <USAGE>
# JUST BUILD
# <UPDATE0.1.0>
# iso 間引く
# 3項演算子で余計な横部分取り除く
# <PLAN>
# 角度依存で回せるように、座標変換
# x方向に伸びる円柱座標系を考える
# ____________________________
# set terminal gif animate optimize size 800, 400
# set output "./anm/hempa.gif"

# do for[t=0:10*pi]{
	t=10*pi
	tt=0.2*t
	reset

	# __PARAMETRIC__________________________
	set parametric
	x(u,v)=sin(u)*cos(v)
	y(u,v)=sin(u)*sin(v)
	z(u,v)=cos(u)

	set isosample 2,15
	# set multiplot layout 1,2
		# set zrange[-1:1]
			# r(tt)=sin(0.2*tt)
			# f(vect,time)=sin(vect-time)
			# plane(x,y)=0
			# f(x,tt)=r(tt)*sin(x)
			# sp[0:8*pi] y(u,v)<0 ? 0 : y(u,v)>1 ? 0 : f(x(u,v),tt) w filledcurves notitle,\
				sp[0,pi][0,2*pi] x(u,v),y(u,v),z(u,v)
				# x<0 ? plane(y,x) : x>1 ? plane(y,x) : f(y,tt) w filledcurves notitle,\

	# 	# __POLAR__________________________
	# 	set border 0
	# 	set polar
	# 	set grid polar
	# 	set rrange[0:1]
	# 	set trange[0:2*pi]
	# 		set arrow from 0,0 to cos(tt),sin(tt)
	# 		p 0 notitle
	# unset multiplot
# }




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

