f = @(t) t.^(-0.5) .* exp(-t);

gamma_half = integral(f, 0, Inf);

disp(['Gamma(1/2) = ', num2str(gamma_half)]);
disp(['sqrt(pi) = ', num2str(sqrt(pi))]);

if abs(gamma_half - sqrt(pi)) < 1e-10
    disp('Gamma(1/2) is equal to sqrt(pi)');
else
    disp('Gamma(1/2) is not equal to sqrt(pi)');
end
