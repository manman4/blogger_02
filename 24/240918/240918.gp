N=20;
x='x+O('x^(N+2));

f = 1/(1 + 5*x + x^2);
a = sum(k=0, N, polcoef(1/f^(k+1), k)/(k+1) * x^k);
b = serreverse(x*f)/x;
print(Vec(a));
print(Vec(b));
print(Vec(a-b));

f = 1 + 5*x + x^2;
a = sum(k=0, N, polcoef(1/f^(k+1), k)/(k+1) * x^k);
b = serreverse(x*f)/x;
print(Vec(a));
print(Vec(b));
print(Vec(a-b));

f = 1/(3 - 2*exp(x));
a = serlaplace(sum(k=0, N, polcoef(1/f^(k+1), k)/(k+1) * x^k));
b = serlaplace(serreverse(x*f)/x);
print(Vec(a));
print(Vec(b));
print(Vec(a-b));

f = 3 - 2*exp(x);
a = serlaplace(sum(k=0, N, polcoef(1/f^(k+1), k)/(k+1) * x^k));
b = serlaplace(serreverse(x*f)/x);
print(Vec(a));
print(Vec(b));
print(Vec(a-b));