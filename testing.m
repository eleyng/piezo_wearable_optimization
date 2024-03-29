close all; clear; clc;

load('constants'); load('x_rel'); load('a_rel');
time = 0:1/30:1/30*36;
current_tot = zeros(1,37);
force_v = zeros(1,37);
current_curv = zeros(1,37);
current_tens = zeros(1,37);
current_ac = zeros(1,37);
timestep=1/30;
b = 3/1000;
hpoly = 200 *10^-6; %micrometer
hpiezo = 110 * 10^-6; %micrometer
dwarp=0.5/1000;%.5 mm
gweft = .2/1000; %.2mm
n_weft = round(s_width/(gweft + b));
n_warp = round(s_length/dwarp);
L0 = dwarp*pi()/2;


for i = 2:1:37
    %i_tot(t, dwarp, b, gweft, hpoly, hpiezo, L0, e31, kwarp, c, Ypoly, e33)
    current_tot(i) = n_warp*n_weft*i_tot(i, dwarp, b, gweft, hpoly, hpiezo, L0, e31, kwarp, c, Ypoly, e33,n_warp);
    current_curv(i) = n_warp*n_weft*i_curv(i, b, hpoly, hpiezo, L0, e31, c, Ypoly, n_warp);
    current_tens(i) = n_warp*n_weft*i_tens(i, dwarp, gweft, hpoly, hpiezo, L0, e31, kwarp,  c,  Ypoly, n_warp);
    current_ac(i) = n_warp*n_weft*i_ac(i, b, hpoly, hpiezo, L0, e33, n_warp);
    %display(['dz:  ' , num2str(dz(i,dwarp,n_warp))])
    %display(['r:  ' , num2str(r(i,dwarp,n_warp))])
    %display( [num2str( (r(i,dwarp,n_warp) - ( dwarp + dx(i,n_warp) ) / ( 2*  abs(tan( pi*dwarp / (4*r(i,dwarp,n_warp))))  ) )), '  ', num2str(r(i,dwarp,n_warp) - ( dwarp + dx(i,n_warp) )), '   ', num2str(( dwarp + dx(i,n_warp) )), '   ', num2str(0.5*dwarp-r(i,dwarp,n_warp)) ] )
    force_v(i)= force(i, dwarp, kwarp,n_warp,gweft);
end
current_tot = current_tot(2:end);
current_curv = current_curv(2:end);
current_tens = current_tens(2:end);
current_ac = current_ac(2:end);
force_v = force_v(2:end);
figure (1)
time = 0:1/30:1/30*35;
plot(time,current_tot,'c')
hold on
plot(time,current_curv, '*')
hold on
plot(time,current_tens, '^')
hold on
plot(time,current_ac, 'k')
legend('total', 'i curve', 'i tens', 'i ac','Location', 'eastoutside');
figure(3)
%time = 0:1/30:1/30*36;
plot(time, force_v)
figure(4)
plot(current_tot, force_v, 'o')
Z = trapz(time, current_tot);
mean_force = n_weft*mean(force_v);
mass = mean_force/9.81;

