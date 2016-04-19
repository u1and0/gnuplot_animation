#
# $Id: animate2.dem,v 1.2 2012/02/15 03:38:19 sfeam Exp $
#
# demo for creating GIF animation and illustrating saving images to
# file one pixel to one pixel
#
# A combination of what was animate.dem and world2.dem with the
# addition of saving the rotated image to an animated GIF.
# Requires GIF_ANIMATION
#
# History:
#   - 1. 3. 2006 Dan Sebald:  1st version
#    07 Jan 2006 Ethan Merritt:  Revise to assume terminal type is set by caller
#

# Caller must set terminal type.
# Example of intended use:
# set term gif animate transparent opt delay 10 size 200,200 background rgb 'black'

unset title
unset key
unset xtics
unset ytics
unset ztics
set border 0
set hidden3d nooffset
set parametric
set angles degrees
set samples 64,64
set isosamples 13,13
set mapping spherical
set dummy u,v
set urange [ -90.0000 : 90.0000 ] noreverse nowriteback
set vrange [ 0.00000 : 360.000 ] noreverse nowriteback
set style data line

# Defines for gnuplot.rot script
limit_iterations=72
# xrot=60
# # xrot_delta = 0
# zrot=136
# # zrot_delta = 355
# xview(xrot)=xrot
# zview(zrot)=zrot
set view 330, 25, 1,3
set size square

splot sin(v+50),cos(v+50),sin(u) notitle with lines lt 5
# , \
#       'world.dat' notitle with lines lt 2 lw 3

# __ANIMATE__________________________
# iteration_count=0
# xrot =(xrot+xrot_delta)%360
# zrot =(zrot+zrot_delta)%360

# load "gnuplot.rot"

pause -1 "Hit return to continue"

reset

print "End of animate2 demo..."
