t = linspace(0, 1, 9);
x = linspace(0, 1, 500);

f1=cos(2*pi*x);
f2=cos(14*pi*x); 

figure; hold on;
plot(x, f1, 'red');
plot(x, f2, 'blue');
for i = t
plot([i, i], [-1, 1], 'g');
end
xlim([0, 1]);
title('cos(2*pi*t) & cos(2*pi*7t)')
