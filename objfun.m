function [output] = objfun( x )
% x = 
s_length = 6*2.54/100;
s_width = 2.5*2.54/100;
Ypoly = 2.58 * 10^9; %Pa
c = 1.55 * 10^9; %Pa
e31 = 0.034; %C m^-2
e33 = 7.97 * 10^-9; %F m^-1
kwarp = 1250; %N m^-1

dwarp = x(1);

time = 0:1/30:1/30*36;
current_tot = zeros(1,37);
force_v = zeros(1,37);
current_curv = zeros(1,37);
current_tens = zeros(1,37);
current_ac = zeros(1,37);
timestep=1/30;
b = x(2)*dwarp;
hpoly = x(4)*dwarp; %micrometer
hpiezo = x(5)*dwarp; %micrometer
gweft = x(3)*dwarp; %.2mm
n_weft = round(s_width/(gweft + b));
n_warp = round(s_length/dwarp);
L0 = dwarp*pi()/2;

for i = 2:1:37
    %i_tot(t, dwarp, b, gweft, hpoly, hpiezo, L0, e31, kwarp, c, Ypoly, e33)
    current_tot(i) = n_warp*n_weft*i_tot(i, dwarp, b, gweft, hpoly, hpiezo, L0, e31, kwarp, c, Ypoly, e33,n_warp);
%     current_curv(i) = n_warp*n_weft*i_curv(i, b, hpoly, hpiezo, L0, e31, c, Ypoly, n_warp);
%     current_tens(i) = n_warp*n_weft*i_tens(i, dwarp, gweft, hpoly, hpiezo, L0, e31, kwarp,  c,  Ypoly, n_warp);
%     current_ac(i) = n_warp*n_weft*i_ac(i, b, hpoly, hpiezo, L0, e33, n_warp);
    force_v(i)= force(i, dwarp, kwarp,n_warp,gweft);
end
current_tot = current_tot(2:end);
% current_curv = current_curv(2:end);
% current_tens = current_tens(2:end);
% current_ac = current_ac(2:end);
force_v = force_v(2:end);
output(1) = -1*trapz(time(1:end-1), current_tot);
output(2) = n_weft*mean(force_v);
output(3) = x(1);
% display(['i = ', num2str(current), '; F = ', num2str(force9)])

end

