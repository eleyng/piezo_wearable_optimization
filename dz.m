%dz
function value = dz(t, dwarp,n_warp)
value = 0.5 * dwarp - (r(t,dwarp,n_warp) - ( dwarp + dx(t,n_warp) ) / ( 2* (tan( pi*dwarp / (4*r(t,dwarp,n_warp))))  ) );
if value > .5*dwarp
    value = .5*dwarp;

end
end