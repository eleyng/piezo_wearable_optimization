
time = [0:1/30:1/30*36]

current = zeros(1,36);
timestep=1/30;
for i = 3:1:37
    current(i)= i_tot(i,3/1000,3/1000, .2/1000, 200 *10^-6, 110 * 10^-6, L0,e31, kwarp, c, Ypoly, e33);
end
plot(time,current)