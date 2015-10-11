%% Create Sine Wave
    close all; clear all;
    %duration [s]
    T=2;
    %sample rate [Hz] Supported by SoundCard (16000,48000,96000,192000)
    Fs = 48000;
    %samples
    N = T*Fs;
    %samples vector
    t = 0:1/Fs:T;
    %Frequency [Hz]
    Fn = 3;
    %Signal
    y(:,1) = sin(Fn*2*pi*t);
    y(:,2) = sin(Fn*2*pi*t);
    
    orig = y;
    
%% Distortion
    distGain = 0.99; % amount of distortion added to signal -1 < a < 1 
    distPlot = distortion(distGain , orig);
    y = distortion(distGain , y);
    
%% Delay
    N = 0.5;  % Delay amount seconds
    N = N * 44100;
    
    delayPlot = delay(N, orig);
    y = delay(N, y);

%% Tremolo
    % Varies the amplitude of the output signal 
    Fc = 10;       % SPEED
    alpha = 0.5;    % MIX
    tremPlot = tremolo(alpha, orig, Fc, Fs);
    y = tremolo(alpha, y, Fc, Fs);

%% Plot it
close all;
    plot(t, orig, 'b'); title('Original sine wave'); grid; figure; 
    plot(t, distPlot,'r'); title('Sine wave with Distortion');  grid; figure;
    plot(t, delayPlot,'g'); hold on; plot(t, orig, 'b');  title('Sine wave with Delay'); grid; figure;
    plot(t, tremPlot,'k');  hold on; plot(t, orig, 'b'); title('Sine wave with Tremolo');  grid; figure;
    plot(t, orig, 'b'); hold on; plot(t,y,'r'); grid;
    