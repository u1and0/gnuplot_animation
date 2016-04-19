# when=ARG1	#'20151201000344'
# outdrct=ARG2	#'C:/ando_yu/gnuplot/saseboout/151201/'
when='20151201000344'
outdrct='C:/ando_yu/gnuplot/saseboout/151201/'
# outdrct='mlt_img_spc/'



reset
# GRAPH SETTING
	unset arrow
	set xtics in
	set ytics out
	set g lt 0 lw 1
	# set size 1,1.25

# XTICS SETTING
	# set xtics 125#x軸大目盛り間隔n
	# set xtics add ( '' 0, '' 125, '' 250, '' 375, '' 500, '' 625, '' 750, '' 875, '' 1000) #表示の変更

# YTICS SETTING
	set format y ""
	set ytics 10	#軸区切り 毎10
	set ylabel "受信電力[dBm]" offset -0.5, 0

# TITLE SETTING
	yea=when[1:4]
	mon=when[5:6]
	day=when[7:8]
	hou=when[9:10]
	min=when[11:12]
	secc=when[13:14]


	timee=yea."/".mon."/".day." ".hou.":".min.":".secc
	set title timee	#タイトル

	dirr=sprintf('%srawdata/trace/',outdrct)	#生データの置き場所
	namee=dirr.yea.mon.day.'_'.hou.min.secc.'.txt'	#ディレクトリ+ファイル名に変換

# KEY SETTING
	# set key font "Times,12"
	set key box
	set key rmargin
	set key vertical

# -----------------------------------------------------------------------
	# print sprintf("done %s",i)	#進捗をコマンドラインに表示
do for[i=1:288]{
	plot [][-120:0] 		'C:/ando_yu/gnuplot/saseboout/151201/rawdata/plot_matrix_data_inv.txt' u ($0*4+22000)/1000:i w l title ""
}

