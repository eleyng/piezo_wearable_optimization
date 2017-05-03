% Clear space, load constants, and set parameters
clear;
% Load CONSTANTS from external .mat file
load('constants'); load('x_rel'); load('a_rel'); load('v_rel');

% INPUTS for Optimization Algorithm
% Desired Warp Thread Diameter (meters)

% CONSTRAINTS for Optimization Algorithm
A = [];
b = [];
Aeq = [];
beq = [];
lb = [0.2, 0.2, 0.01, 0.01];
ub = [5, 5, 0.5, 0.5];
% X0 = [d, 2, 2, 0.2, 0.2];

%~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

% Current total (REPLACE THIS WITH TIME INCREMENT LOOP)
%i_tot(t, dwarp, b, gweft, hpoly, hpiezo, L0, e31, kwarp, c, Ypoly, e33,n_warp)
%~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
% Call the NSGA optimizer
% Pareto is a matrix of design variables - each row is a solution (P x 5)
% fVals is a matrix of function values at the Pareto front (P x 2)
 options = optimoptions(@gamultiobj,'PlotFcn',@gaplotpareto,  'PopulationSize', 10, 'Generations', 10);

[Pareto, fVals] = gamultiobj(@objfun, 4, A, b, Aeq, beq, lb, ub, options);

%~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
% Plots

% Generate Pareto Frontier Plot
% figure();
% plot(fVals(:,1), fVals(:,2), 'ro');
% title('Pareto Frontier of Current vs Force');
% xlabel('Current'), ylabel('Force');