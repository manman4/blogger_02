M=20;
N=10;

b(n, k) = if(n==1, 1, k+n*sum(j=1, n-1, b(j, k)));
a(n, k) = if(n<4, b(n, k), (n+2)*a(n-1, k)-(n-1)*a(n-2, k));

\\ aとbの値が一致するかどうかを確認
for(k=-5, 5, for(n=1, M, if(a(n, k)!=b(n, k), print([n, k]))));
for(k=-5, 5, print1(k,": "); for(n=1, N, print1(a(n, k),", ")); print);
