clc;
clear all;
close all;

Ac=4; %car amp
fc=0.9; %car freq
Am=.7; %msg amplitude
fm=.03; %msg freq
Fs=100; %sampling rate

ka=1;

t=[0:0.1:50];
ct=Ac*cos(2*pi*fc*t); 
mt=Am*cos(2*pi*fm*t); 
AM=ct.*(1+ka*mt); %AM Wave

subplot(3,1,1);
plot(mt);
ylabel('Message signal');

subplot(3,1,2); 
plot(ct);
ylabel('carrier');

subplot(3,1,3); % amplitude modulated wave
plot(AM);
ylabel('AM signal');
