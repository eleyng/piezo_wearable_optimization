%i_ac
function value = i_ac(b,L0,e33,hpiezo,hpoly)
accel = @a;
value = b * L0 * e33 * accel(t) / (hpoly + hpiezo);
end