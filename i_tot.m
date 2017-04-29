function value = i_tot(t, dwarp, b, gweft, hpoly, hpiezo, L0, e31, kwarp, c, Ypoly, e33)
value = i_tens(t, dwarp, L0, e31, kwarp, hpiezo, c, hpoly, Ypoly, gweft) + i_ac(t, b, L0, e33, hpiezo, hpoly) + i_curv(t, hpoly, hpiezo, c, Ypoly, b, L0, e31);
end