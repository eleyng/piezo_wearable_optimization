%force
function value = force(t, dwarp, kwarp,n_warp,gweft)

value = 2*kwarp * (sqrt( (2*dz(t, dwarp,n_warp))^2 + gweft^2) - gweft);

end