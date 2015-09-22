function [x]=distortion(a,x)
%   A = The amount of distortion.  A
%       should be chosen so that -1<A<1.
%   X = Input.  Should be a column vector 
%       between -1 and 1.
k = 2*a/(1-a);
x = (1+k)*(x)./(1+k*abs(x));