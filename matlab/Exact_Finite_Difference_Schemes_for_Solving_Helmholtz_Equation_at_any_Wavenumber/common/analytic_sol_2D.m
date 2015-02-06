function [ sol ] = analytic_sol_2D( k, theta, X, Y )
% ANALYTIC_SOL_2D 
% Compute the analytic solution to the Helmholtz equation in 2D.
% param:
%   k: coefficient of Helmholtz equatin (d�u/dx� + k� * u = 0)
%   theta: parameter of the solution.
%   x, y: abscissa and ordinate of the point as MESHGRID MATRIX

    k1 = k * cos(theta);
    k2 = k * sin(theta);
    sol = transpose( exp(1i * (k1 * X + k2 * Y)) );
    
end

