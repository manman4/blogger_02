N=30;

a(n) = if(n==0, 1, sum(k=0, (n-1)\5, a(5*k) * a(n-1-5*k)));
apr(n, p, r) = r*binomial(n*p+r, n)/(n*p+r);
b(n) = apr(n\5, 6, n%5+1);

\\ aとbの値が一致するかどうかを確認
for(n=0, N, if(a(n) != b(n), print(n)));
for(n=0, N, print1(a(n),", "));