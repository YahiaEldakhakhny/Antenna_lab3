% This function plots the normalized Array factor pattern of Binomial array in polar co-ordinates in 2D
function Bi_AF_polar_2D(N, alpha, d)
    % Define constants
    step = 0.01;
    gamma = -pi:step:pi;
    psi = alpha + 2*pi*d * cos(gamma);
    u = psi/2;
    
    AF = cos(u).^(N-1);
    AF = abs(AF);

    figure
    polarplot(gamma, AF)
    pax = gca;
    pax.ThetaZeroLocation = 'bottom';
end