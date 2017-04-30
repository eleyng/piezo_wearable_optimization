    function v2 = dlwarp(t,dwarp,gweft,n_weft)
        
        v2 = 0.5 * ( (2*dz(t,dwarp,n_weft))^2 + gweft^2 )^-0.5 * ( 2 * (2*dz(t,dwarp,n_weft) * d_dz(t,dwarp,n_weft) ) );
    
    end