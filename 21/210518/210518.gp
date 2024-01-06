a(n) = for(k=2, n, if(ispolygonal(m=k*(k+1)*((n-2)*k-n+5)/6, n), print(n, ": ", [k, m])));
for(n=3, 100000, a(n))