N=10;

a(n, k) = sum(j=0, n, binomial(j+k, k)*binomial(j, n-j)^2);
b(n) = sum(k=0, N, a(k, n)*x^k + x*O(x^N));

a089627(n, k) = n!/((n-2*k)!*k!^2);
c(n) = sum(k=0, n\2, a089627(n, k)*(1-x-x^2)^(n-2*k)*x^(3*k))/((1-x-x^2)^2-4*x^3 + x*O(x^N))^(n+1/2);
for(n=0, 10, if(b(n)==c(n), print(n, " ", Vec(b(n)))));
