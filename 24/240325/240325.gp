a(n, m) = binomial(n^2, n)%n^m;
for(m=1, 6, for(n=1, 50, print1(a(n, m),", ")); print)
