% This function plots the normalized Array factor pattern of Tchebychev array in polar co-ordinates in 2D
function tcheby_AF_polar_2D(N, alpha, d, Ro)
    % Define constants
    m = N-1;
    Zo = cosh((1/m) * acosh(Ro));
    step = 0.01;
    gamma = -pi:step:pi;
    psi = alpha + 2*pi*d * cos(gamma);
    u = psi/2;
    z = Zo * cos(u);
    
    AF = chebyshevT(m, z);
    AF = abs(AF);

    figure
    polarplot(gamma, AF)
    pax = gca;
    pax.ThetaZeroLocation = 'bottom';
end