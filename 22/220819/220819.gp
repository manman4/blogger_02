N=50;
f(a, b, n) = prod(k=1, n, (1-(a*b)^k)*(1+a*(a*b)^(k-1))*(1+b*(a*b)^(k-1))+x*O(x^n));
g1=f(  -x, -x^5, N);
h1=f(-x^3, -x^3, N);
g2=f(  -x, -x^7, N);
h2=f(-x^3, -x^5, N);
print(Vec(g1))
print(Vec(h1))
print(Vec(g1/h1)) \\ A092848
print(Vec(g2))
print(Vec(h2))
print(Vec(g2/h2)) \\ A092869