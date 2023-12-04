% This function plots the normalized Array Factor of Tchebyshev Array Vs z in cartesian
% co-ordinates
function tcheby_AF_cartesian_2D(N, Ro)
    % Define constants
    step = 1e-3;
    m = N-1;
    zmax = cosh((1/m) * acosh(Ro));
    z = -zmax : step : zmax;

    AF = chebyshevT(m, z);
    AF = abs(AF);
    
    figure
    plot(z, AF, 'linewidth', 2);
    xlabel('z')
    ylabel('AF')
    title('Array Factor Vs z')
end
