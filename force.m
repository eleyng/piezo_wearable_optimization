%force
function value = force(t, dwarp, kwarp)
dz_var = @dz;
value = 2*kwarp * (sqrt( (2*dz_var(t, dwarp))^2 + gweft^2) - gweft);
end