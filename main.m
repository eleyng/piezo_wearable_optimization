% Read CONSTANTS from external .mat file
clear all;
load('constants')

% INPUTS for Optimization Algorithm
load('inputs')

% Current total (REPLACE THIS WITH TIME INCREMENT LOOP)
i_tot = i_tens(1, dwarp, L0, e31, kwarp, hpiezo, c, hpoly, Ypoly, gweft) + i_curv(t, b, L0, e31) + i_ac(b,L0,e33,hpiezo,hpoly)
