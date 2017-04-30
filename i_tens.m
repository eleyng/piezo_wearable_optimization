%i_tens

function value = i_tens(t, dwarp, gweft, hpoly, hpiezo, L0, e31, kwarp,  c,  Ypoly, n_weft)

value = ( 2*L0*e31*kwarp ) / ( hpiezo*c + hpoly*Ypoly ) * dlwarp(t,dwarp,gweft,n_weft);

end