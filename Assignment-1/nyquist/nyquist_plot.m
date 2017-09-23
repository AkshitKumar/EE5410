close all;
clear;
clc;

w1 = 2 * pi * (0:0.01:1000-0.1) * 1i;
w2 = 2 * pi * 1000 * exp(1i*(pi/2:-0.01:-pi/2));
w3 = 2 * pi * (-1000+0.1 : 0.01 : -0.01)* 1i;

W = [w1 w2 w3];

eta = 0.01;

figure()
grid on
for w0 = 100:100:1000
    G = w0^2 ./ (W.*W + 2*eta*w0*W + w0^2);
    plot(real(G),imag(G));
    hold on;
    grid on;
end  
title('Nyquist Plot')
xlabel('Real Axis')
ylabel('Imaginary Axis')