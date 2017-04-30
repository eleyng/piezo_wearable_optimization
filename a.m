%acceleration
function value = a(t,n_weft)
load('a_rel')
value = a_rel(t)/n_weft;
end
