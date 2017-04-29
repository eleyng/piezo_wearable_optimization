%displacement at a certain time

function value = dx(t)
% change in x at time t
% call function x
% use x @ i-1, i difference
% if i=0 --> dx = 0

if t == 0
    value = 0;
else
    value = x(t) - x(t - 1);
end
