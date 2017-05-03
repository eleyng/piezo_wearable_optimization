function value = i_tot(t, dwarp, b, gweft, hpoly, hpiezo, L0, e31, kwarp, c, Ypoly, e33,n_warp)
value = i_tens(t, dwarp, gweft, hpoly, hpiezo, L0, e31, kwarp,  c,  Ypoly, n_warp) + i_ac(t, b, hpoly, hpiezo, L0, e33, n_warp) + i_curv(t, b, hpoly, hpiezo, L0, e31, c, Ypoly, n_warp);
end