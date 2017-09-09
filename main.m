
s = tf(1,[1,1]);

w1 = 2 * pi * (0:0.01:100-0.1) * i;
w2 = 2 * pi * 100 * exp(i*(pi/2:-0.01:-pi/2));
w3 = 2 * pi * (100-0.1 : -0.01 : 0.1)* i;

W = [w1 w2 w3];

plot(real(W),imag(W));

G = 1./(W+1);

%plot(real(G),imag(G));

% To understand all this, plot different transfer functions here