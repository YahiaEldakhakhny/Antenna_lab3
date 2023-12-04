%% Binomial
disp('# Bionomial');

% Get input from user
d = input('Enter spacing w.r.t lamda d = ');
N = input('Enter number of elements N = ');
alpha = input('Enter progressive phase shift alpha = ');

% Draw plots
Bi_AF_cartesian_2D(N, alpha, d);
Bi_AF_polar_2D(N, alpha, d);
Bi_AF_3D(N, alpha, d);

%% Tshebysceff
disp('# Tshebysceff');

% Get input from user
d = input('Enter spacing w.r.t lamda d = ');
N = input('Enter number of elements N = ');
alpha = input('Enter progressive phase shift alpha = ');
Ro = input('Enter maximum value of main lobe Ro = ');

% Draw plots
tcheby_AF_cartesian_2D(N, Ro);
tcheby_AF_polar_2D(N, alpha, d, Ro);
tcheby_AF_3D(N, alpha, d, Ro);

