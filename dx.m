%displacement at a certain time

function value = dx(t)
% change in x at time t
t_int = [0:0.1:2];
int_t = (2-0)/(length(t_int)-1);
% call function x
% use x @ i-1, i difference
% if i=0 --> dx = 0
pos = @x;
if t == 0
    value = 0;
else
    value = pos(t) - pos(t - int_t);
end
