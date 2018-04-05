x = 0:.01:10;
y = 7/2 * exp(x) - 1/2 * exp(x) + exp(2*x);
% y = exp(solx(1)*x)  - 5/4 * exp(solx(2)*x);
% y = exp(x-5).*exp(7-x);

plot(x, y)%- 5/4 * exp(.1*x) + 13/4 * exp(.6*x)

