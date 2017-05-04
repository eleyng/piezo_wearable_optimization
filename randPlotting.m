% CONSTRAINTS for Optimization Algorithm
A = [];
b = [];
Aeq = [];
beq = [];
lb = [0.000101, 0.2, 0.2, 0.01, 0.01];
ub = [0.0010358, 5, 5, 0.5, 0.5];
% X0 = [d, 2, 2, 0.2, 0.2];

%~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

% Current total (REPLACE THIS WITH TIME INCREMENT LOOP)
%i_tot(t, dwarp, b, gweft, hpoly, hpiezo, L0, e31, kwarp, c, Ypoly, e33,n_warp)
%~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
% Call the NSGA optimizer
% Pareto is a matrix of design variables - each row is a solution (P x 5)
% fVals is a matrix of function values at the Pareto front (P x 2)

disp('Gonna do that opto, fam')
[Pareto, fVals] = gamultiobj(@KrigMeta, 5, A, b, Aeq, beq, lb, ub, @confun);
disp('Finished that opto, fam')

mesh(fVals(:,1), fVals(:,2), fVals(:,3))


%plot(c,F, 'o')

