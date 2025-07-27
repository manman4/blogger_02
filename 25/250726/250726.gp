N=10;
K=10;

a(n, k) = binomial((k+1)*n+k-1, n)/(n+1);
b(n, k) = my(x='x+O('x^(n+1))); x*sum(j=0, n, a(j, k)*x^j);
for(k=0, K, f=b(N, k); if(f*(1-f)^k==x, print([k, Vec(f)])));