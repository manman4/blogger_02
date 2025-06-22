N=10;
K=10;

a(n, k) = binomial(k*n+1, n)/(k*n+1);
b(n, k) = my(x='x+O('x^(n+1))); sum(j=0, n, a(j, k)*x^j);
for(k=0, K, f = b(N, k); if(f*subst(f, x, -x*f^(2*k-1))==1, print([k, Vec(f)])));
