    function v2 = dlwarp(t,dwarp,gweft,n_warp)
        
        v2 = 0.5 * ( (2*dz(t,dwarp,n_warp))^2 + gweft^2 )^-0.5 * ( 2 * (2*dz(t,dwarp,n_warp) * d_dz(t,dwarp,n_warp) ) );
    
    end