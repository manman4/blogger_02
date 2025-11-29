f(n) = my(x='x+O('x^(n+1))); sum(k=0, n, x^k);
print(f(4)==f(8));
print((f(4)+2*x^4)==f(8));
print((f(4)+2*x^6)==f(8));