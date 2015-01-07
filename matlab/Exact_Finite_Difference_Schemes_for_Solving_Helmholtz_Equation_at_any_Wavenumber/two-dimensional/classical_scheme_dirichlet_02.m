function [A, b, x, n, m] = classical_scheme_dirichlet_02()
%CLASSICAL_SCHEME_DIRICHLET Summary of this function goes here
%   Detailed explanation goes here

clear;
clc;

A = []; 
b = [];
x = [];

% parameters necessary to compute interior points
param.k = 1.5;          
param.h = 0.5./param.k;
% parameters of the region
a = 0; 
b = 1;
param.n = (b-a)./param.h;
param.m = param.n;
% parameters necessary to compute boundary points
param.dirichlet.S = @(param, A, b, i, j) 1;
param.dirichlet.W = @(param, A, b, i, j) 0;
param.dirichlet.N = @(param, A, b, i, j) 0;
param.dirichlet.E = @(param, A, b, i, j) 0;
% type of scheme we want to use
param.interior = 'std';

param
func_scheme = helmholtz_2D_scheme_factory( param );

% create the matrix of finite difference
[A, b] = build_two_dimensional_problem2(param, func_scheme);

%debug
full(A);
b;

% % solve the system
% tstart = tic;
% numIter = 1e6;
% options.nonneg = true;
% [x info restart] = sart(A, b', numIter, [], options);        
% telapsed = toc(tstart);
% 
% %------------------- display some result -----------------------------
% size(x)
% reshape(x,n,m)
% numIter
% telapsed
