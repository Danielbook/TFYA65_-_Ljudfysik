%% Projekt
clear all; clc; close all;
% Ladda in ljudfil
    filename = 'guitar.mp3';
    [y, Fs] = audioread(filename); % y = audio data, Fs = Hertz
    
    y = y(1:300000, 1:2);
    
   	original = audioplayer(y, Fs);
      
%% Restore to original signal
    testSignal = y;
    signal = audioplayer(testSignal, Fs);
    
%% Play the Original
    play(original);

%% Distortion
    distGain = 0.6; % amount of distortion added to signal -1 < a < 1 
    
    testSignal = distortion(distGain , testSignal);
    
    signal = audioplayer(testSignal, Fs);

%% Delay
    N = 1;  % Delay amount seconds
    N = N * 44100;
    
    testSignal = delay(N, testSignal);
    
    signal = audioplayer(testSignal, Fs);

%% Tremolo
    % Varies the amplitude of the output signal 
    Fc = 8;       % SPEED
    alpha = 1;    % MIX
    
    testSignal = tremolo(alpha, testSignal, Fc, Fs);

    signal = audioplayer(testSignal, Fs);
    
%% Play Signal
    play(signal);
    
 %% RECORD SOUND
 
recObj = audiorecorder 
 
disp('Start speaking.')
recordblocking(recObj, 5);
disp('End of Recording.');

%% PLAY RECORDING

play(recObj);