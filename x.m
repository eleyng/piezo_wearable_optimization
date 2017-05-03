% position at a certain time

function value = x(t,n_warp)
load('x_rel')
value = x_rel(t)/n_warp;

end
