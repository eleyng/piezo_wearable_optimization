% i_curv

function value = i_curv(t, b, hpoly, hpiezo, L0, e31, c, Ypoly, n_weft)
%zint is a function
%x is a vector
    
    %nested function for the derivative term
    function v2 = d_term(t,L0,n_weft)
        
        v2 = 0.5 * ( (24 * (L0 - x(t,n_weft)))/(x(t,n_weft)^3) )^-0.5 * ( (-3*24*L0*x(t,n_weft)^-4) + 2*24*x(t,n_weft)^-3 ) ;
        
    end

value = b*L0*e31*z_int(hpoly,hpiezo,c,Ypoly)*d_term(t, L0,n_weft);

end