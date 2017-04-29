%i_tens

function value = i_tens(t, dwarp, L0, e31, kwarp, hpiezo, c, hpoly, Ypoly, gweft)

value = ( 2*L0*e31*kwarp ) / ( hpiezo*c + hpoly*Ypoly ) * dlwarp(t,dwarp,gweft);

end