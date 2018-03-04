X_n = zeros(2, 50);
%figure
%for E = .1:.1:.9
    %X_n = zeros(2, 100);
    for i = 0:54
    %E = 2;
        %X_n(:, i+1) = 2 *(E).^i * [0; 1] + -1 * (-E+1).^i * [-1; 0];
    %X_n(:, i+1) = -1/2 *(E).^i * [1; -1] + 3/2* (-E+1).^i * [1; 1];
    %X_n(:, i+1) = 1/2 *(.1).^i * [-1; 1] + -3/2* .9.^i * [-1; -1];
    X_n(:, i+1) = phi.^i * [1; 1/phi] + -1/phi.^i * [1; phi];
    end
    %
    
plot(X_n(1,:), X_n(2, :), 'p:', 'DisplayName', '[2; phi+1/phi]')
hold on
%end

%legend('show')

title('Branching Process')