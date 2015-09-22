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
    distGain = 0.9; % amount of distortion added to signal -1 < a < 1 
    y = distortion(distGain , y);
    distorion = audioplayer(y, Fs);
    
    play(distorion);
    pause(5);
    stop(distorion);

%% Delay
    

%% Chorus

%% Play file

    