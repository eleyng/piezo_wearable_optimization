% i_curv

function value = i_curv(t, hpoly, hpiezo, c, Ypoly, b, L0, e31) 
%zint is a function
%x is a vector
    
    %nested function for the derivative term
    function v2 = d_term(t,L0)
        
        v2 = 0.5 * ( (24 * (L0 - x(t)))/(x(t)^3) )^-0.5 * ( (-3*24*L0*x(t)^-4) + 2*24*x(t)^-3 ) ;
        
    end

value = b*L0*e31*z_int(hpoly,hpiezo,c,Ypoly)*d_term(t, L0);

end