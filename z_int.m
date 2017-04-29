%z_int
function value = z_int(hpoly,hpiezo,c,Ypoly)

value = hpoly/2 + hpiezo/2 - abs(z0(hpoly, hpiezo, c, Ypoly));

end