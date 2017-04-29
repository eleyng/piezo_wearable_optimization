function v1 = d_dz(t,dwarp)
        if t == 0
            v1 = 0;
        else
            v1 = dz(t,dwarp) - dz(t - 1,dwarp);
        end
end