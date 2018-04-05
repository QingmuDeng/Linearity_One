import vectarrow.*

z = sqrt(2) * exp(j*pi/6);
results = zeros(1, 9);

figure;
for i=1:1:9
    results(i) = z^(i-1)/4;
    vectarrow([0 0], [real(results(i)) imag(results(i))]);
    hold on
end


% plot(results, 'bo', 'MarkerFaceColor', 'b')

xlim([-2.5 1]);
ylim([-4 2]);