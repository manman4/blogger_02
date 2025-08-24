T(n, k) = n!/k!*sum(j=0, n-k, binomial(j, n-k-j)/(n-k-j)!);
for(n=0, 10, for(k=0, n, print1(T(n, k),", ")); print);

print;

for(n=0, 30, print1(sum(k=0, n, T(n, k)),", "));