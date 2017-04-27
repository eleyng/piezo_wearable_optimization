function value = r(t, dwarp)

pos = @x;
dpos = @dx;
value = pos(t)^3 / (12 * ( (pi-2) * dwarp - 2*dpos(t) ) );

end