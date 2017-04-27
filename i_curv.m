% i_curv

function value = i_curv(t, b, L0, e31) 
%zint is a function
%x is a vector

z_0 = @z0;
z_int_var = @z_int;
    
    %nested function for the derivative term
    function v2 = d_term(t,L0)
        pos = @x;
        v2 = 0.5 * ( (24 * (L0 - pos(t)))/(pos(t)^3) )^-0.5 * ( (-3*24*L0*pos(t)^-4) + 2*24*pos(t)^-3 ) ;
    end

d_term_var = @d_term;
value = b*L0*e31*z_int_var(hpoly,hpiezo,z0)*d_term_var(t, L0);
end