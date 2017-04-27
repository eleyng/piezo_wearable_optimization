%dz
function value = dz(t, dwarp)

rad = @r;
dpos = @dx;

value = 0.5 * dwarp - (rad(t,dwarp) - ( dwarp + dpos(t) ) / ( 2*tan( pi*dwarp / (4*rad(t,dwarp)) ) ) );

end