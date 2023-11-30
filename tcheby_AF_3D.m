function tcheby_AF_3D(N, alpha, d, Ro)
syms phi theta

m = N-1;
Zo = cosh((1/m) * acosh(Ro));

psi = alpha + 2*pi*d * cos(phi);
u = psi/2;
zo = Zo * cos(u);

AF = chebyshevT(m, zo);
AF = abs(AF);


x = AF*sin(phi).*cos(theta);
y = AF*sin(phi).*sin(theta);
z = AF.*cos(phi);

fsurf(x,y,z,[0 pi 0 2*pi])
axis equal
end