%displacement at a certain time

function value = dx(t, n_warp)
% change in x at time t
% call function x
% use x @ i-1, i difference
% if i=0 --> dx = 0

if t == 1
    value = 0;
else
    value = (x(t,n_warp) - x(t - 1,n_warp));
end
