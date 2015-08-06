function [ f, fx, fy, fxx, fyy ] = derivative_analytic( str_f )
%DERIVATIVE_ANALYTIC compute a closure (pointer to function) of the
%function f and its first and second derivative with respect to x and y
%
% f: a string of the mathematical expression of the function ex: x.^2+x+1
% or sin(x) + log(y)
% f, fx, fy, fxx, fyy : closure of the function f (@(x,y) f(x,y)) and
% closure to all of the derivative.

syms x y; % declare 2 symbolic variables
tof = @( z ) matlabFunction( z , 'Vars', [x,y]);

fs = sym(str_f);
f = tof(fs);

fxs = diff( fs, x );
fx = tof(fxs);

fys = diff( fs, y );
fy = tof(fys);

fxxs = diff(fxs);
fxx = tof(fxxs);

fyys = diff(fys);
fyy = tof(fyys);            

end

