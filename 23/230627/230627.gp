a(n, r) = sum(k=1, n, (-1)^(k-1)*numbpart(n-k*(3*k+2*r-1)/2));
for(r=0, 10, for(n=1, 20, print1(a(n, r), ", ")); print)