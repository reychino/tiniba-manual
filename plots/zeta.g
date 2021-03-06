## metapost
set term mp solid color  latex magnification 1
set out 'fig.mp'
set multiplot
set lmargin 10
# set size 1.4,1.4
#
 set xrange [0:5]
#

set ylabel "\\Large $\\zeta^{xyz}(\\omega)(10^{-11}\\,J\\,m^{-1}\\,V^{-2})$]" 

set origin 0,2

p 'data/gaas/zeta.kk_xyz_5216_15-spin_scissor_0_Nc_24' u 1:2 w l t 'GaAs',\
  'data/si/zeta.kk_xyz_5216_15-spin_scissor_0_Nc_24' u 1:2 w l t 'Si'

set origin 0,1
set ylabel '\Large ${\cal D}^z$' 
set xlabel "\\Large photon-energy (eV)"
f=0.08987
p '<paste data/gaas/zeta.kk_xyz_5216_15-spin_scissor_0_Nc_24 data/gaas/chi1.kk_xx_yy_zz_5216_15-spin_scissor_0_Nc_24' u 1:(f*$2/($5+.0001)) w l t 'GaAs',\
'<paste data/si/zeta.kk_xyz_5216_15-spin_scissor_0_Nc_24 data/si/chi1.kk_xx_yy_zz_5216_15-spin_scissor_0_Nc_24' u 1:(f*$2/($5+.0001)) w l t 'Si'
