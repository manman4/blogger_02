K=5;
L=3;
M=30;
N=10;

a(n, r, s, t, u) = r*sum(k=0, n, binomial(t*k+u*(n-k)+r, k)*binomial(n+(s-1)*k-1, n-k)/(t*k+u*(n-k)+r));
b(n, r, s, t, u) = my(A=1); for(i=1, n, A = (1 + x*A^(t/r) / (1 - x*A^(u/r))^s + x*O(x^n))^r ); polcoeff(A, n);

\\ aとbの値が一致するかどうかを確認
for(r=1, K, for(s=-K, K, for(t=0, K, for(u=0, K, for(n=0, M, if(a(n, r, s, t, u)!=b(n, r, s, t, u), print([n, r, s, t, u])))))));
for(r=1, L, for(s=-L, L, for(t=0, L, for(u=0, L, print1([r, s, t, u],": "); for(n=0, N, print1(a(n, r, s, t, u),", ")); print))));

print

a(n, r, s, t, u) = r*sum(k=0, n, binomial(t*k+u*(n-k)+r, k)*binomial(s*k, n-k)/(t*k+u*(n-k)+r));
b(n, r, s, t, u) = my(A=1); for(i=1, n, A = (1 + x*A^(t/r) * (1 + x*A^(u/r))^s + x*O(x^n))^r ); polcoeff(A, n);

\\ aとbの値が一致するかどうかを確認
for(r=1, K, for(s=-K, K, for(t=0, K, for(u=0, K, for(n=0, M, if(a(n, r, s, t, u)!=b(n, r, s, t, u), print([n, r, s, t, u])))))));
for(r=1, L, for(s=-L, L, for(t=0, L, for(u=0, L, print1([r, s, t, u],": "); for(n=0, N, print1(a(n, r, s, t, u),", ")); print))));