%dz
function value = dz(t, dwarp)

value = 0.5 * dwarp - (r(t,dwarp) - ( dwarp + dx(t) ) / ( 2*tan( pi*dwarp / (4*r(t,dwarp)) ) ) );

end