% position at a certain time

function value = x(t,n_weft)
load('x_rel')
value = x_rel(t)/n_weft;
end
