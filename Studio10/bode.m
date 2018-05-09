w = logspace(-1, 3, 500);

r_2b = 1./abs(9-w.^2);
r_2c = 1./sqrt(w.^4-w.^2+1);

phi_2b = 0*w;
phi_2c = -atand(w./(1-w.^2));

subplot(2, 1, 1)
loglog(w, r_2c)
grid on
ylabel('C(t)')
subplot(2, 1, 2)
semilogx(w, phi_2c)
ylabel('phi(w)')
xlabel('w')
grid on