N=30;

a(k) = sum(j=1, N, x^(k*j)/(1-x^j) + x*O(x^N));
b(k) = sum(j=k, N, x^j    /(1-x^j) + x*O(x^N));
for(k=1, 10, if(a(k)==b(k), print(k, " ", Vec(a(k)))));