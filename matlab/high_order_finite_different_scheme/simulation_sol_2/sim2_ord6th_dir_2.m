% Problem taken 
% ITERATIVE SCHEMES FOR HIGH ORDER COMPACT DISCRETIZATIONS
% TO THE EXTERIOR HELMHOLTZ EQUATION

clear variables; close all; clc;

% modeled solution
theor = @(x, y, k, theta) helm_sol2_2D( k, theta, x, y);
theta = pi/4;

% basic parameter of the simulation
param.k = 20;
param.h = 0.02;
% definition of the area we simulate in it
param.a = 0; 
param.b = 1;
param.c = 0; 
param.d = 1;
param.m = (param.d - param.c)/param.h + 1;
param.n = (param.b - param.a)/param.h + 1;

% dirichlet function
param.dirichlet = @(x,y) theor( x, y, param.k , theta);
scheme = Ord6thHelmholtz2D_2(param.k, param.h);

% define the solver
solver = @(A, b) A\b;
% solver = @(A, b) bicgstab(A,b, 1e-7, 10000);

param
ps = ProblemSolver(param, scheme, solver);
[ A, b, sol ] = ps.solve();

error = ErrorHandler( param, sol );
error

axis_scale = [param.a, param.b, param.c, param.d, -1, 1];
compare_graphs( param,  sol, error, axis_scale, 1);