%z_int
function value = z_int(hpoly,hpiezo,z0)
%load('constants');

z_init = @z0;
value = hpoly/2 + hpiezo/2 - abs(z_init(hpoly, hpiezo, c, Ypoly));
end