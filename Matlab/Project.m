%% Projekt
clear all; clc; close all;
% Ladda in ljudfil
    filename = 'test.wav';
    [y,Fs] = audioread(filename); % y = audio data, Fs = Hertz
   	
    %soundsc(y,Fs);
    
    yLeft = y(1:1000,1);
    yRight = y(1:1000,2);
    y(1:1000,:)
%% Distortion
    distGain = 0.5 % amount of distortion added to signal -1 < a < 1 
    y = distortion(y(1:1000,:), distGain);
    
%% Delay
    

%% Chorus

%% Play file

    