# ____________________________
# henpa.gp ver 0.1.0
# <INTRODUCTION>
# 進行波と反射波の合成
# <ACTION>
# gifを出力する
# f()が進行波
# g()が反射波
# <USAGE>
# set output 出力ファイルの指定
# main 進行波のアンプリチュード
# ref 反射波のアンプリチュード
# <UPDATE0.1.0>
# first commit
# <PLAN>
# なし
# ____________________________
set terminal gif animate optimize size 1200, 400 font "GothicBBB-Medium-EUC-H,15"
set output "C:/home/gnuplot/anm/vswr_hansya.gif"
set xl "進行方向"
set arrow from screen 0.3,0.1 to screen 0.7,0.1
unset border
unset xtics
unset ytics

main=1
ref=1
f(vect,time)=main*sin(vect-time)
g(vect,time)=ref*sin(vect+time)
do for[t=0:10*pi]{
	tt=0.2*t
	p[0:4*pi][-2:2] 	f(x,tt) title '進行波' ,\
			g(x,tt) title '反射波'#,\
			# f(x,tt)+g(x,tt) w l lw 3 t '合成波'
}
