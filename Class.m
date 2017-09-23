clear all;
close all;

s = tf('s');
T = 0.01;

sys = 1/(s*(s+1));

Dsys = c2d(sys,T);
Dsys1 = c2d(sys,T,'tustin');


