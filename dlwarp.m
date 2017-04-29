    function v2 = dlwarp(t,dwarp,gweft)
        
        v2 = 0.5 * ( (2*dz(t,dwarp))^2 + gweft^2 )^-0.5 * ( 2 * (2*dz(t,dwarp) * d_dz(t,dwarp) ) );
    
    end