h(n) = sum(k=1, n, 1/k);
a(n, l) = sum(k=0, n, binomial(n, k)^l*(1-l*k*(h(k)-h(n-k))));
for(l=1, 12, for(n=0, 10, print1(a(n, l), ", ")); print);