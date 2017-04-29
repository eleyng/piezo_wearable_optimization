%z0
function value = z0(hpoly, hpiezo, c, Ypoly)

value = (c*hpiezo*(hpoly + hpiezo))/(2*(Ypoly*hpoly+c*hpiezo));

end