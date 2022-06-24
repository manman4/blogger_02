M=10;

a355133(n) = if(n==0, 1, sum(k=1, n,              k * 2^k     * stirling(n, k, 1) * a355133(k-1)));
for(n=0, M, print1(a355133(n), ", "))
b355208(n) = if(n==0, 1, sum(k=1, n,                  2^k     * stirling(n, k, 1) * b355208(k-1)));
a355208(n) = b355208(n-1);
for(n=1, M, print1(a355208(n), ", "))

a355134(n) = if(n==0, 1, sum(k=1, n, (-1)^(n-k) * k * 2^k     * stirling(n, k, 1) * a355134(k-1)));
for(n=0, M, print1(a355134(n), ", "))
b355209(n) = if(n==0, 1, sum(k=1, n, (-1)^(n-k)     * 2^k     * stirling(n, k, 1) * b355209(k-1)));
a355209(n) = b355209(n-1);
for(n=1, M, print1(a355209(n), ", "))

a355131(n) = if(n==0, 1, sum(k=1, n,              k * 2^k     * stirling(n, k, 2) * a355131(k-1)));
for(n=0, M, print1(a355131(n), ", "))
b355210(n) = if(n==0, 1, sum(k=1, n,                  2^k     * stirling(n, k, 2) * b355210(k-1)));
a355210(n) = b355210(n-1);
for(n=1, M, print1(a355210(n), ", "))

a355132(n) = if(n==0, 1, sum(k=1, n, (-1)^(n-k) * k * 2^k     * stirling(n, k, 2) * a355132(k-1)));
for(n=0, M, print1(a355132(n), ", "))
b355211(n) = if(n==0, 1, sum(k=1, n, (-1)^(n-k)     * 2^k     * stirling(n, k, 2) * b355211(k-1)));
a355211(n) = b355211(n-1);
for(n=1, M, print1(a355211(n), ", "))

a355120(n) = if(n==0, 1, sum(k=1, n,              k * 2^(k-1) * stirling(n, k, 1) * a355120(k-1)));
for(n=0, M, print1(a355120(n), ", "))
b355214(n) = if(n==0, 1, sum(k=1, n,                  2^(k-1) * stirling(n, k, 1) * b355214(k-1)));
a355214(n) = b355214(n-1);
for(n=1, M, print1(a355214(n), ", "))

a355121(n) = if(n==0, 1, sum(k=1, n, (-1)^(n-k) * k * 2^(k-1) * stirling(n, k, 1) * a355121(k-1)));
for(n=0, M, print1(a355121(n), ", "))
b355215(n) = if(n==0, 1, sum(k=1, n, (-1)^(n-k)     * 2^(k-1) * stirling(n, k, 1) * b355215(k-1)));
a355215(n) = b355215(n-1);
for(n=1, M, print1(a355215(n), ", "))

a355122(n) = if(n==0, 1, sum(k=1, n,              k * 2^(k-1) * stirling(n, k, 2) * a355122(k-1)));
for(n=0, M, print1(a355122(n), ", "))
b355216(n) = if(n==0, 1, sum(k=1, n,                  2^(k-1) * stirling(n, k, 2) * b355216(k-1)));
a355216(n) = b355216(n-1);
for(n=1, M, print1(a355216(n), ", "))

a355123(n) = if(n==0, 1, sum(k=1, n, (-1)^(n-k) * k * 2^(k-1) * stirling(n, k, 2) * a355123(k-1)));
for(n=0, M, print1(a355123(n), ", "))
b355217(n) = if(n==0, 1, sum(k=1, n, (-1)^(n-k)     * 2^(k-1) * stirling(n, k, 2) * b355217(k-1)));
a355217(n) = b355217(n-1);
for(n=1, M, print1(a355217(n), ", "))