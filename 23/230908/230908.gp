a(n) = if(n==0, 1, 2 * sum(k=0, n-1, binomial(n-1,k)*c(k)));
b(n) = if(n==0, 0,     sum(k=0, n-1, binomial(n-1,k)*a(k)));
c(n) = if(n==0, 0,     sum(k=0, n-1, binomial(n-1,k)*b(k)));

for(n=0, 20, print1(a(n),", "))
for(n=0, 20, print1(b(n),", "))
for(n=0, 20, print1(c(n),", "))
 