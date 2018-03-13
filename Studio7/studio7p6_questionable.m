% Thanks for your help figuring this out!
k = 0:1:8;
w = [1 1 2 3 -1 -2 5 3 4 -2 -2 4 5 -6 2 1];
w = w';
N = 16;

S_k = cell(9, 1);
C_k = cell(9, 1);
results = cell(18, 1);

% This for loop generate vector S_k and C_k
for i = k
    % For S_i, create a column vector of S_k=i 
    S_k{i+1,:} = [0; sin(2*i*pi/N); sin(4*i*pi/N); sin(6*i*pi/N); sin(8*i*pi/N); sin(10*i*pi/N); sin(12*i*pi/N); sin(14*i*pi/N); sin(16*i*pi/N); sin(18*i*pi/N); sin(20*i*pi/N); sin(22*i*pi/N); sin(24*i*pi/N); sin(26*i*pi/N); sin(28*i*pi/N); sin(30*i*pi/N);];
    % For C_i, create a column vector of c_k=i
    C_k{i+1,:} = [1; cos(2*i*pi/N); cos(4*i*pi/N); cos(6*i*pi/N); cos(8*i*pi/N); cos(10*i*pi/N); cos(12*i*pi/N); cos(14*i*pi/N); cos(16*i*pi/N); cos(18*i*pi/N); cos(20*i*pi/N); cos(22*i*pi/N); cos(24*i*pi/N); cos(26*i*pi/N); cos(28*i*pi/N); cos(30*i*pi/N);];
end

% This function calculates the orthogonal projection of w onto each S_k and
% C_k
for i=k
    i = i + 1;
    if i~=9
        results{i, :} = (S_k{i, :}.' / (S_k{i, :}.' * S_k{i, :})) * w;
    else
        results{i, :} = 0;
    end
    
    results{i+9, :} = C_k{i, :}.' / (C_k{i, :}.' * C_k{i, :}) * w;
end



A = zeros(16, 16);
for i=k
    i = i + 1;
    if i == 1
        A = zeros(16, 16);
    else
        A = A + (S_k{i, :} * S_k{i, :}.' / (S_k{i, :}.' * S_k{i, :}) + ( C_k{i, :} * C_k{i, :}.' / (C_k{i, :}.' * C_k{i, :})))/i^2;
    end
end

A_approx = zeros(16, 16);
for i=1:3
    i = i + 1;
    A_approx = A_approx + (S_k{i, :} * S_k{i, :}.' / (S_k{i, :}.' * S_k{i, :})+( C_k{i, :} * C_k{i, :}.' / (C_k{i, :}.' * C_k{i, :})))/i^2;
end

error = A*w - A_approx*w;
