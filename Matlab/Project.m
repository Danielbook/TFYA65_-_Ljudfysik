%% Projekt
clear all; clc; close all;
% Ladda in ljudfil
    filename = 'My_life_is_potato.wav';
    [y,Fs] = audioread(filename); % y = audio data, Fs = Hertz
   	original = audioplayer(y, Fs);

    %% Play the Original
    play(original);
    pause(5);
    stop(original);
    
    %% Distortion

    distGain = 0.9 % amount of distortion added to signal -1 < a < 1 
    yDist = distortion(distGain , y);
    distorion = audioplayer(yDist, Fs);
    
    %% Play Distortion
    play(distorion);
    pause(5);
    stop(distorion);

%% Delay
    N = 0.5;  % Delay amount seconds
    N = N * 44100;
    yDelay = delay(N, y);
    
    delay = audioplayer(yDelay, Fs);
    
    %% Play Delay
    play(delay);
    pause(5);
    stop(delay);

%% Tremolo
    
    tremolo = audioplayer(out, Fs);
    
    play(tremolo);
    pause(5);
    stop(tremolo);

%% Play file

    