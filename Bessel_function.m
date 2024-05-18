function Bessel_function()
    x = linspace(0, 20, 400); 
    
    % Calculate Bessel functions of the first kind
    J0 = besselj(0, x);
    J1 = besselj(1, x);
    J2 = besselj(2, x);
    J3 = besselj(3, x);
    J4 = besselj(4, x);
    J5 = besselj(5, x);
    
    % Plot Bessel functions 
    figure;
    hold on;
    plot(x, J0, '--r', 'LineWidth', 2);
    plot(x, J1, '-.g', 'LineWidth', 2); 
    plot(x, J2, ':b', 'LineWidth', 2);
    plot(x, J3, '--c', 'LineWidth', 2); 
    plot(x, J4, '--k', 'LineWidth', 2);
    plot(x, J5, ':y', 'LineWidth', 2); 
    

    title('Bessel Functions of the First Kind');
    xlabel('x');
    ylabel('J_m(x)');
    legend('J_0', 'J_1', 'J_2', 'J_3', 'J_4', 'J_5', 'Location', 'best');
    grid on;
    set(gca, 'FontSize', 10); 
end
