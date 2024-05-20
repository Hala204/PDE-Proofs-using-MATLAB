n = input('Enter the degree n of Pn(x): ');
m = input('Enter the degree m of Pm(x): ');

Pn = @(x) legendreP(n, x);
Pm = @(x) legendreP(m, x);

integral_value = integral(@(x) Pn(x) .* Pm(x), -1, 1);

if n == m
    theoretical_value = 2 / (2 * n + 1);
else
    theoretical_value = 0;
end

disp(['Integral of P_' num2str(n) '(x) * P_' num2str(m) '(x) from -1 to 1 = ', num2str(integral_value)]);
disp(['Theoretical value = ', num2str(theoretical_value)]);

if abs(integral_value - theoretical_value) < 1e-10 && (integral_value == theoretical_value)
    disp('The computed integral matches the theoretical value.');
else
    disp('The computed integral does not match the theoretical value.');
end
