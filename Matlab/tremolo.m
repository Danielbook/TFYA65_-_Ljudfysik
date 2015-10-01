function [x]=tremolo(alpha, y, Fc, Fs) 

%   y = input
%   x = output signal

index = 1:length(y);
trem = ( 1 + alpha * sin(2*pi*index*(Fc/Fs)))'; % Create sinuswave to apply to signal
x(:,1) = trem.*y(:,1);
x(:,2) = trem.*y(:,2);