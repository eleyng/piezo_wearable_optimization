%acceleration
function value = a(t,n_warp)
load('a_rel')
value = a_rel(t)/n_warp;
end
