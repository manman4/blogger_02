N=40; x='x+O('x^N);

f_x = sum(k=0, N, x^(k*(k+1)/2)  /prod(j=1, k, 1-x^j));
f_y = sum(k=0, N, x^(k*(3*k-1)/2)/prod(j=1, k, 1-x^j));
f_z = sum(k=0, N, x^(k*(3*k+1)/2)/prod(j=1, k, 1-x^j));

g_x = sum(k=0, N, x^k            /prod(j=1, k, 1-x^j));
g_y = sum(k=0, N, x^k^2          /prod(j=1, k, 1-x^j));
g_z = sum(k=0, N, x^(k*(k+1))    /prod(j=1, k, 1-x^j));

print(Vec(f_x))       \\ A000009
print(Vec(f_y))       \\ A025157
print(Vec(f_z))       \\ A237979
print(Vec(f_y - f_z)) \\ A096401
print(Vec(f_x - f_y)) \\ A237976
print(Vec(f_x - f_z)) \\ A237977

print(Vec(g_x))       \\ A000041
print(Vec(g_y))       \\ A003114
print(Vec(g_z))       \\ A003106
print(Vec(g_y - g_z)) \\ A006141
print(Vec(g_x - g_y)) \\ A039899
print(Vec(g_x - g_z)) \\ A039900
