a(n) = print1(n, ": "); for(k=0, 1e6, if(ispolygonal(m=k*(k+1)*((n-2)*k-n+5)/6, n), print1(m, ", "))); print;
for(n=3, 1000, a(n));