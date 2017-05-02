%dz
function value = dz(t, dwarp,n_weft)
value = 0.5 * dwarp - (r(t,dwarp,n_weft) - ( dwarp + dx(t,n_weft) ) / ( 2*tan( pi*dwarp / (4*r(t,dwarp,n_weft)) ) ) );
if value > .5*dwarp
    value = .5*dwarp;
end
end