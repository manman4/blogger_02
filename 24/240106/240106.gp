N=15;

a000670(n) = sum(k=0, n, k!*stirling(n, k, 2));
A(n, k) = 2^k*a000670(n)-sum(j=0, k-1, 2^j*(k-1-j)^n);
for(n=0, N, for(k=0, n, print1(A(k, n-k), ", ")))

\\ 別の計算方法と一致することを確認
B(n, k) = k^n+sum(j=1, n, binomial(n, j)*B(n-j, k));
for(n=0, N, for(k=0, n, print1(A(k, n-k)-B(k, n-k), ", ")))