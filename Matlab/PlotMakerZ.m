%% Create Sine Wave
    close all; clear all;
    %duration [s]
    T=1;
    %sample rate [Hz] Supported by SoundCard (16000,48000,96000,192000)
    Fs = 48000;
    %samples
    N = T*Fs;
    %samples vector
    t = 0:1/Fs:T;
    %Frequency [Hz]
    Fn = 3;
    %Signal
    y = sin(Fn*2*pi*t);
    
    orig = y;
    
%% Distortion
    distGain = 0.9; % amount of distortion added to signal -1 < a < 1 
    
    y = distortion(distGain , y);
%% Delay Lågpass?? Distortion??
    N = 0.1;  % Delay amount seconds
    N = N * 44100;
    
    y = delay(N, y);

%% Tremolo
    % Varies the amplitude of the output signal 
    Fc = 30;       % SPEED
    alpha = 100;    % MIX
    
    y = tremolo(alpha, y, Fc, Fs);
    
%% Plot it
close all;
    plot(t, orig, 'b'); grid; hold on;
    plot(t,y,'r'); grid;
    