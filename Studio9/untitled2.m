t = 0:.01:10;

% 8a
x = exp(-2*t).*cos(t);
x_dot = -2*exp(-2*t).*cos(t) - sin(t).*exp(-2*t);

% 8b
% x = exp(-2*t).*cos(t) - 2*exp(-2*t).*sin(t);
% x_dot = -2*exp(-2*t).*cos(t) - sin(t).*exp(-2*t) - 2 * (exp(-2*t).*cos(t) - 2*exp(-2*t).*sin(t));

% 8c
% x = 3*cos(2*t) + 4*sin(2*t);
% x_dot = -6*sin(2*t) + 8*cos(2*t);

% 8d
% x = exp(-.1*t).*cos(5*t);
% x_dot = -.1*exp(-.1*t).*cos(5*t) - 5*exp(-.1*t).*sin(5*t);

% 8e
% x = exp(-2*t).*sin(t/100);
% x_dot = -2*exp(-2*t).*sin(t/100) + 1/100*exp(-2*t).*cos(t/100);


% % 8f
% x = 100*exp(-1.99*t) - 100*exp(-2.01*t);
% x_dot = -199*exp(-1.99*t) + 201*exp(-2.01*t);

% x = exp(-2*t).*cos(t/100);
% x_dot = -2*exp(-2*t).*cos(t/100) - 1/100*exp(-2*t).*sin(t/100);

figure
% plot(x, x_dot)
% xlabel('$X(t)$', 'Interpreter', 'latex', 'fontSize', 12)
% ylabel('$\dot{X}(t)$', 'Interpreter','latex', 'fontSize', 12)
hold on
% plot(t, 3*cos(2*t))
% plot(t, 3*sin(2*t))
plot(t, x, 'DisplayName', 'X')
hold off
% legend('show')