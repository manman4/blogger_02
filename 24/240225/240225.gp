a(n, s, t, u) = sum(k=0, n\s, binomial(t*(n+1)+k-1, k)*binomial((u+1)*(n+1)-s*k-2, n-s*k))/(n+1);
b(n, s, t, u) = my(x='x+O('x^(n+2))); polcoef(serreverse(x*(1-x)^u*(1-x^s)^t)/x, n);
diff(n, s, t, u) = a(n, s, t, u)-b(n, s, t, u);

for(s=1, 2, for(t=-5, 5, for(u=-5, 5, print1([s, t, u],": "); for(n=0, 10, if(diff(n, s, t, u)==0, print1(a(n, s, t, u), ", "))); print)))