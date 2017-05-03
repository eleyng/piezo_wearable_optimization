function value = i_total(t,b,dwarp,hpoly,hpiezo,gweft,n_warp)
load('constants')
value = i_ac(b,L0,e33,hpiezo,hpoly,n_warp) + i_curv(t, b, L0, e31,n_warp) + i_tens(t, dwarp, L0, e31, kwarp, hpiezo, c, hpoly, Ypoly, gweft,n_warp);
end

