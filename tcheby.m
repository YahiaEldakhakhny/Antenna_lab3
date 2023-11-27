function res = tcheby(m, z)

if m == 0
    res = ones(length(z));
elseif m == 1
    res = z;
else
    x = 2.*z.*tcheby(m-1, z) - tcheby(m-2, z);
    res = x(1, :);
end
end