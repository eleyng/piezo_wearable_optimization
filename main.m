% Clear space, load constants, and set parameters
clear;
% Load CONSTANTS from external .mat file
load('constants.mat')

% INPUTS for Optimization Algorithm
% Desired Warp Thread Diameter (meters)
d = 0.0005;

% CONSTRAINTS for Optimization Algorithm
A = [];
b = [];
Aeq = [1;0;0;0;0];
beq = [d;0;0;0;0];
lb = [0.1010/1000; 0.2*d; 0.2*d; 0.01*d; 0.01*d];
ub = [1.0358/1000; 5*d; 5*d; 0.5*d; 0.5*d];

%~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

% Current total (REPLACE THIS WITH TIME INCREMENT LOOP)
i_tot = i_tens(1, dwarp, L0, e31, kwarp, hpiezo, c, hpoly, Ypoly, gweft) + i_curv(t, b, L0, e31) + i_ac(b,L0,e33,hpiezo,hpoly)

%~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
% Call the NSGA optimizer
% Pareto is a matrix of design variables - each row is a solution (P x 5)
% fVals is a matrix of function values at the Pareto front (P x 2)
[Pareto, fVals] = gamultiobj(@YOURFUNCTION, 5, A, b, Aeq, beq, lb, ub);

%~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
% Plots

% Generate Pareto Frontier Plot
figure();
plot(fVals(:,1), fVals(:,2), 'ro');
title('Pareto Frontier');
xlabel('FIRST OUTPUT'), ylabel('SECOND OUTPUT');