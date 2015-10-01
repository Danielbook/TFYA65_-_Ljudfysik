function [x]=delay(N, y)   
%   N = The amount of delay in seconds/441000.  
%   X = Input
x = y; % set up a new array, same size as old one
distGain = 0.1; % amount of distortion added to signal -1 < a < 1

for n = N+1:length(y)
    y(n) = distortion(distGain, y(n));
    x(n) = .8 * x(n-N) + y(n);  % recursive echo
end