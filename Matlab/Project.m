%% Projekt
clear all; clc; close all;
% Ladda in ljudfil
    filename = 'My_life_is_potato.wav';
    [y,Fs] = audioread(filename); % y = audio data, Fs = Hertz
   	%player = audioplayer(y, Fs);
    
    
    y(1:1000,:)
%% Distortion
    distGain = 0.5 % amount of distortion added to signal -1 < a < 1 
    y = distortion(distGain , y);
    player = audioplayer(y, Fs);
    play(player);
    pause(5);
    stop(player);

%% Delay
    

%% Chorus

%% Play file

    