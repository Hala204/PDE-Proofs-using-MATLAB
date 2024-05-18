function Gamma_function()
    x = -4:0.1:4;
    gamma_values = gamma(x);

    % Plotting
    figure;
    plot(x, gamma_values, 'LineWidth', 2);
    title('Gamma Function');
    xlabel('x');
    ylabel('\Gamma(x)');
    grid on;

    hold on;
    positive_indices = x > 0;
    plot(x(positive_indices), gamma_values(positive_indices), 'r', 'LineWidth', 2);

    negative_indices = x < 0;
    plot(x(negative_indices), gamma_values(negative_indices), 'g', 'LineWidth', 2);

    fplot(@gamma, [-4, 4], '--', 'LineWidth', 1);

    legend('All x', 'x > 0', 'x < 0', 'Location', 'NorthWest');

    ylim([-8, 8]);

    hold off;
end
