clear all;
t=0:0.001:1;
Amsg=10;
Acar=10;
fmsg=10;
fcar=100;
kf=7;

msg=Amsg*cos(2*pi*fmsg*t);
subplot(3,1,1);
plot(t,msg);
xlabel('Time');
ylabel('Amplitude');
title('message signal');
carr=Acar*cos(2*pi*fcar*t);
subplot(3,1,2);
plot(t,carr);
xlabel('Time');
ylabel('Amplitude');
title('carrier signal');

mod_wave=Acar*cos(2*pi*fcar*t+kf.*sin(2*pi*fmsg*t));
subplot(3,1,3);
plot(t,mod_wave);
xlabel('Time');
ylabel('Amplitude');
title('FM wave');
