%i_ac
function value = i_ac(t, b, hpoly, hpiezo, L0, e33, n_warp) 
value = b * L0 * e33 * a(t,n_warp) / (hpoly + hpiezo);
end