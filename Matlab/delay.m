function [x]=delay(N,y)   
%   N = The amount of delay in seconds/441000.  
%   X = Input
x = y; % set up a new array, same size as old one
for n=N+1:length(y)
      x(n)=.8*x(n-N)+y(n);  % recursive echo
end