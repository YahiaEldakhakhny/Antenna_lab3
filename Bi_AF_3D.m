function Bi_AF_3D(N, alpha, d)
syms phi theta


psi = alpha + 2*pi*d * cos(phi);
u = psi/2;
AF = cos(u).^(N-1);


x = AF*sin(phi).*cos(theta);
y = AF*sin(phi).*sin(theta);
z = AF.*cos(phi);

figure
fsurf(x,y,z,[0 pi 0 2*pi])
axis equal
end