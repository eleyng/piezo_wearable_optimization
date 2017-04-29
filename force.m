%force
function value = force(t, dwarp, kwarp)

value = 2*kwarp * (sqrt( (2*dz(t, dwarp))^2 + gweft^2) - gweft);

end