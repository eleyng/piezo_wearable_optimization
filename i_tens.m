%i_tens

function value = i_tens(t, dwarp, L0, e31, kwarp, hpiezo, c, hpoly, Ypoly, gweft)
dzvar = @dz;
    
    function v1 = d_dz(t,dwarp)
        if t == 0
            v1 = 0;
        else
            v1 = dzvar(t,dwarp) - dzvar(t,dwarp);
        end
    end

    function v2 = dlwarp(t,dwarp)
        d_dzvar = @d_dz;
        v2 = 0.5 * ( (2*dzvar(t,dwarp))^2 + gweft^2 )^-0.5 * ( 2 * (2*dzvar(t,dwarp) * d_dzvar(t,dwarp) ) );
    end

d_term = @dlwarp;
value = ( 2*L0*e31*kwarp ) / ( hpiezo*c + hpoly*Ypoly ) * d_term(t,dwarp);

end