% Initialization
clear;
close all;
clc;

% Defining the function
t1 = 0 : 1/128 : 1/4 - 1/128;
t2 = 1/4 : 1/128 : 3/4 - 1/128;
t3 = 3/4 : 1/128 : 1;
t = [t1 t2 t3];
x1 = 4 * t1;
x2 = 2 - 4*t2;
x3 = 4*t3 - 4;
x = [x1 x2 x3];

n=1:129;
x1=8./(pi*pi*n.*n);

for i=1:length(n)
    if mod(i,2)==0
        x1(i)=0;
    end
end
x_fft=fft(x);
x_fft=abs(x_fft);





