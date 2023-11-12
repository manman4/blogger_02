K=5;
L=3;
M=30;
N=10;

a(n, s, t, u) = sum(k=0, n, binomial(t*k+u*(n-k)+1, k)*binomial(n+(s-1)*k-1, n-k)/(t*k+u*(n-k)+1));
b(n, s, t, u) = my(A=1); for(i=1, n, A = 1 + x*A^t / (1 - x*A^u)^s + x*O(x^n) ); polcoeff(A, n);

\\ aとbの値が一致するかどうかを確認
for(s=0, K, for(t=0, K, for(u=0, K, for(n=0, M, if(a(n, s, t, u)!=b(n, s, t, u), print([n, s, t, u]))))))
for(s=0, L, for(t=0, L, for(u=0, L, print1([s, t, u],": "); for(n=0, N, print1(a(n, s, t, u), ", ")); print)))

print

a(n, s, t, u) = sum(k=0, n, binomial(t*k+u*(n-k)+1, k)*binomial(s*k, n-k)/(t*k+u*(n-k)+1));
b(n, s, t, u) = my(A=1); for(i=1, n, A = 1 + x*A^t * (1 + x*A^u)^s + x*O(x^n) ); polcoeff(A, n);

\\ aとbの値が一致するかどうかを確認
for(s=0, K, for(t=0, K, for(u=0, K, for(n=0, M, if(a(n, s, t, u)!=b(n, s, t, u), print([n, s, t, u]))))))
for(s=0, L, for(t=0, L, for(u=0, L, print1([s, t, u],": "); for(n=0, N, print1(a(n, s, t, u), ", ")); print)))