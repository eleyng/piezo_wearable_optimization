%i_ac
function value = i_ac(t, b, L0, e33, hpiezo, hpoly)
value = b * L0 * e33 * a(t) / (hpoly + hpiezo);
end