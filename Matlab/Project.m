%% Projekt
clear all; clc; close all;
% Ladda in ljudfil
    filename = 'My_life_is_potato.wav';
    [y, Fs] = audioread(filename); % y = audio data, Fs = Hertz
   	original = audioplayer(y, Fs);
    
    
    %% Restore to original signal
    testSignal = y;
    signal = audioplayer(testSignal, Fs);
    
    %% Play the Original
    play(original);
    pause(5);
    stop(original);
    
    %% Distortion
    distGain = 0.9; % amount of distortion added to signal -1 < a < 1 
    
    testSignal = distortion(distGain , testSignal);
    
    signal = audioplayer(testSignal, Fs);

%% Delay
    N = 0.5;  % Delay amount seconds
    N = N * 44100;
    
    testSignal = delay(N, testSignal);
    
    signal = audioplayer(testSignal, Fs);

%% Tremolo
    % Varies the amplitude of the output signal 
    Fc = 12;        % SPEED
    alpha = 0.9;    % MIX
    
    testSignal = tremolo(alpha, testSignal, Fc, Fs) 

    signal = audioplayer(testSignal, Fs);
    
%% Play Signal
    play(signal);
    pause(5);
    stop(signal);

    