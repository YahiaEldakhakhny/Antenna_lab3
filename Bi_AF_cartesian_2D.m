% This function plots the normalized Array Factor of binomial Array Vs u in cartesian
% co-ordinates
function Bi_AF_cartesian_2D(N, alpha, d)
    % Define constants
    step = 1e-3;
    beta = 2*pi;
    u = (alpha - beta*d)/2 : step : (alpha + beta*d)/2;

    AF = cos(u).^(N-1);
    AF = abs(AF);
    
    figure
    plot(u, AF, 'linewidth', 2);
    xlabel('u')
    ylabel('AF')
    title('Array Factor Vs u')
end
