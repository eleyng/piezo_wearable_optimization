% position at a certain time

function value = v(t,n_warp)
load('v_rel')
value = v_rel(t)/n_warp;

end
