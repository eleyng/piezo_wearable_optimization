load('constants')
time = 0:1/30:1/30*36;
current_tot = zeros(1,37);
current_curv = zeros(1,37);
current_tens = zeros(1,37);
current_ac = zeros(1,37);
timestep=1/30;
dwarp=3/1000;
n_weft = round(s_length/dwarp);
L0 = dwarp*pi()/2;
b = 3/1000;
hpoly = 200 *10^-6;
hpiezo = 110 * 10^-6;
gweft = .2/1000;
for i = 3:1:37
    %i_tot(t, dwarp, b, gweft, hpoly, hpiezo, L0, e31, kwarp, c, Ypoly, e33)
    current_tot(i) = i_tot(i, dwarp, b, gweft, hpoly, hpiezo, L0, e31, kwarp, c, Ypoly, e33,n_weft);
    current_curv(i) = i_curv(i, b, hpoly, hpiezo, L0, e31, c, Ypoly, n_weft);
    current_tens(i) = i_tens(i, dwarp, gweft, hpoly, hpiezo, L0, e31, kwarp,  c,  Ypoly, n_weft);
    current_ac(i) = i_ac(i, b, hpoly, hpiezo, L0, e33, n_weft);
    
end
figure (1)
plot(time,current_tot,'c')
hold on
plot(time,current_curv, '*')
hold on
plot(time,current_tens, '^')
hold on
plot(time,current_ac, 'k')
legend('total', 'i curve', 'i tens', 'i ac','Location', 'eastoutside');
