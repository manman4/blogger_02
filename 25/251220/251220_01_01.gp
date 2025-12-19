a(n) = sum(k=1, n, gcd(k, n)); 
for(n=2, 10000, if(Mod(a(n)+1, n)==0 && !isprime(n), print1(n,", "))); 
