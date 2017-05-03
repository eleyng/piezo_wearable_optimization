function value = r(t, dwarp,n_warp)

value = sqrt( x(t,n_warp)^3 / (12 * ( (pi-2) * dwarp - 2*dx(t,n_warp) ) ));
min_r = sqrt(dwarp^3/(24*dwarp*pi()/2-dwarp));
if value < min_r
    value = min_r;
end