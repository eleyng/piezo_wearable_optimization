%displacement at a certain time

function value = dx(t, n_weft)
% change in x at time t
% call function x
% use x @ i-1, i difference
% if i=0 --> dx = 0

if t == 0
    value = 0;
else
    value = (x(t,n_weft) - x(t - 1,n_weft));
end
