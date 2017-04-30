function value = r(t, dwarp,n_weft)

value = sqrt( x(t,n_weft)^3 / (12 * ( (pi-2) * dwarp - 2*dx(t,n_weft) ) ));

end