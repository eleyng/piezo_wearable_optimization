function v1 = d_dz(t,dwarp,n_warp)
        if t == 0
            v1 = 0;
        else
            v1 = dz(t,dwarp,n_warp) - dz(t-1,dwarp,n_warp);
        end
end